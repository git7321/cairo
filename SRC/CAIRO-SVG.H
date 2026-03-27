/* cairo - a vector graphics library with display and print output
 *
 * Copyright (C) University of Southern California
 * Copyright (C) Red Hat, Inc.
 *
 * This library is free software; you can redistribute it and/or
 * modify it either under the terms of the GNU Lesser General Public
 * License version 2.1 as published by the Free Software Foundation
 * (the "LGPL") or, at your option, under the terms of the Mozilla
 * Public License Version 1.1 (the "MPL"). If you do not alter this
 * notice, a recipient may use your version of this file under either
 * the MPL or the LGPL.
 */

#ifndef CAIRO_SVG_H
#define CAIRO_SVG_H

#include <cairo.h>

CAIRO_BEGIN_DECLS

typedef enum _cairo_svg_version {
    CAIRO_SVG_VERSION_1_1,
    CAIRO_SVG_VERSION_1_2
} cairo_svg_version_t;

cairo_public cairo_surface_t * __cdecl
cairo_svg_surface_create (const char *filename,
     double  width_in_points,
     double  height_in_points);

cairo_public cairo_surface_t * __cdecl
cairo_svg_surface_create_for_stream (cairo_write_func_t write_func,
     void    *closure,
     double  width_in_points,
     double  height_in_points);

cairo_public void __cdecl
cairo_svg_surface_restrict_to_version (cairo_surface_t *surface,
                                       cairo_svg_version_t version);

cairo_public void __cdecl
cairo_svg_get_versions (cairo_svg_version_t const **versions,
                                              int *num_versions);

cairo_public const char * __cdecl
cairo_svg_version_to_string (cairo_svg_version_t version);

CAIRO_END_DECLS

#endif /* CAIRO_SVG_H */
