#include "cairoint.h"
#include "cairo-image-surface-private.h"

void
cairo_debug_reset_static_data (void)
{
    CAIRO_MUTEX_INITIALIZE ();

    _cairo_scaled_font_map_destroy ();

    _cairo_toy_font_face_reset_static_data ();

#if CAIRO_HAS_FT_FONT
    _cairo_ft_font_reset_static_data ();
#endif

#if CAIRO_HAS_WIN32_FONT
    _cairo_win32_font_reset_static_data ();
#endif

    _cairo_intern_string_reset_static_data ();

    _cairo_scaled_font_reset_static_data ();

    _cairo_pattern_reset_static_data ();

    _cairo_clip_reset_static_data ();

    _cairo_image_reset_static_data ();

#if CAIRO_HAS_DRM_SURFACE
    _cairo_drm_device_reset_static_data ();
#endif

    _cairo_default_context_reset_static_data ();

#if CAIRO_HAS_COGL_SURFACE
    _cairo_cogl_context_reset_static_data ();
#endif

    CAIRO_MUTEX_FINALIZE ();
}

#if HAVE_VALGRIND
void
_cairo_debug_check_image_surface_is_defined (const cairo_surface_t *surface)
{
    const cairo_image_surface_t *image = (cairo_image_surface_t *) surface;
    const uint8_t *bits;
    int row, width;

    if (surface == NULL)
	return;

    if (! RUNNING_ON_VALGRIND)
	return;

    bits = image->data;
    switch (image->format) {
    case CAIRO_FORMAT_A1:
	width = (image->width + 7)/8;
	break;
    case CAIRO_FORMAT_A8:
	width = image->width;
	break;
    case CAIRO_FORMAT_RGB16_565:
	width = image->width*2;
	break;
    case CAIRO_FORMAT_RGB24:
    case CAIRO_FORMAT_RGB30:
    case CAIRO_FORMAT_ARGB32:
	width = image->width*4;
	break;
    case CAIRO_FORMAT_INVALID:
    default:
	return;
    }

    for (row = 0; row < image->height; row++) {
	VALGRIND_CHECK_MEM_IS_DEFINED (bits, width);
	VALGRIND_MAKE_MEM_DEFINED (bits, width);
	bits += image->stride;
    }
}
#endif

static cairo_status_t
_print_move_to (void *closure,
		const cairo_point_t *point)
{
    fprintf (closure,
	     " %f %f m",
	     _cairo_fixed_to_double (point->x),
	     _cairo_fixed_to_double (point->y));

    return CAIRO_STATUS_SUCCESS;
}

static cairo_status_t
_print_line_to (void *closure,
		const cairo_point_t *point)
{
    fprintf (closure,
	     " %f %f l",
	     _cairo_fixed_to_double (point->x),
	     _cairo_fixed_to_double (point->y));

    return CAIRO_STATUS_SUCCESS;
}

static cairo_status_t
_print_curve_to (void *closure,
		 const cairo_point_t *p1,
		 const cairo_point_t *p2,
		 const cairo_point_t *p3)
{
    fprintf (closure,
	     " %f %f %f %f %f %f c",
	     _cairo_fixed_to_double (p1->x),
	     _cairo_fixed_to_double (p1->y),
	     _cairo_fixed_to_double (p2->x),
	     _cairo_fixed_to_double (p2->y),
	     _cairo_fixed_to_double (p3->x),
	     _cairo_fixed_to_double (p3->y));

    return CAIRO_STATUS_SUCCESS;
}

static cairo_status_t
_print_close (void *closure)
{
    fprintf (closure, " h");

    return CAIRO_STATUS_SUCCESS;
}

void
_cairo_debug_print_path (FILE *stream, cairo_path_fixed_t *path)
{
    cairo_status_t status;
    cairo_box_t box;

    fprintf (stream,
	     "path: extents=(%f, %f), (%f, %f)\n",
	    _cairo_fixed_to_double (path->extents.p1.x),
	    _cairo_fixed_to_double (path->extents.p1.y),
	    _cairo_fixed_to_double (path->extents.p2.x),
	    _cairo_fixed_to_double (path->extents.p2.y));

    status = _cairo_path_fixed_interpret (path,
					  _print_move_to,
					  _print_line_to,
					  _print_curve_to,
					  _print_close,
					  stream);
    assert (status == CAIRO_STATUS_SUCCESS);

    if (_cairo_path_fixed_is_box (path, &box)) {
	fprintf (stream, "[box (%d, %d), (%d, %d)]",
		 box.p1.x, box.p1.y, box.p2.x, box.p2.y);
    }

    fprintf (stream, "\n");
}

void
_cairo_debug_print_polygon (FILE *stream, cairo_polygon_t *polygon)
{
    int n;

    fprintf (stream,
	     "polygon: extents=(%f, %f), (%f, %f)\n",
	    _cairo_fixed_to_double (polygon->extents.p1.x),
	    _cairo_fixed_to_double (polygon->extents.p1.y),
	    _cairo_fixed_to_double (polygon->extents.p2.x),
	    _cairo_fixed_to_double (polygon->extents.p2.y));
    if (polygon->num_limits) {
	fprintf (stream,
		 "       : limit=(%f, %f), (%f, %f) x %d\n",
		 _cairo_fixed_to_double (polygon->limit.p1.x),
		 _cairo_fixed_to_double (polygon->limit.p1.y),
		 _cairo_fixed_to_double (polygon->limit.p2.x),
		 _cairo_fixed_to_double (polygon->limit.p2.y),
		 polygon->num_limits);
    }

    for (n = 0; n < polygon->num_edges; n++) {
	cairo_edge_t *edge = &polygon->edges[n];

	fprintf (stream,
		 "  [%d] = [(%f, %f), (%f, %f)], top=%f, bottom=%f, dir=%d\n",
		 n,
		 _cairo_fixed_to_double (edge->line.p1.x),
		 _cairo_fixed_to_double (edge->line.p1.y),
		 _cairo_fixed_to_double (edge->line.p2.x),
		 _cairo_fixed_to_double (edge->line.p2.y),
		 _cairo_fixed_to_double (edge->top),
		 _cairo_fixed_to_double (edge->bottom),
		 edge->dir);

    }
}
