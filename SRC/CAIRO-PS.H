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

#ifndef CAIRO_PS_H
#define CAIRO_PS_H

#include <cairo.h>

CAIRO_BEGIN_DECLS

typedef enum _cairo_ps_level {
    CAIRO_PS_LEVEL_2,
    CAIRO_PS_LEVEL_3
} cairo_ps_level_t;

cairo_public cairo_surface_t * __cdecl
cairo_ps_surface_create (const char *filename,
        double  width_in_points,
        double  height_in_points);

cairo_public cairo_surface_t * __cdecl
cairo_ps_surface_create_for_stream (cairo_write_func_t write_func,
        void        *closure,
        double  width_in_points,
        double  height_in_points);

cairo_public void __cdecl
cairo_ps_surface_restrict_to_level (cairo_surface_t *surface,
                                    cairo_ps_level_t level);

cairo_public void __cdecl
cairo_ps_get_levels (cairo_ps_level_t const **levels,
                                         int *num_levels);

cairo_public const char * __cdecl
cairo_ps_level_to_string (cairo_ps_level_t level);

cairo_public void __cdecl
cairo_ps_surface_set_eps (cairo_surface_t *surface,
            cairo_bool_t  eps);

cairo_public cairo_bool_t __cdecl
cairo_ps_surface_get_eps (cairo_surface_t *surface);

cairo_public void __cdecl
cairo_ps_surface_set_size (cairo_surface_t *surface,
        double  width_in_points,
        double  height_in_points);

cairo_public void __cdecl
cairo_ps_surface_dsc_comment (cairo_surface_t *surface,
        const char *comment);

cairo_public void __cdecl
cairo_ps_surface_dsc_begin_setup (cairo_surface_t *surface);

cairo_public void __cdecl
cairo_ps_surface_dsc_begin_page_setup (cairo_surface_t *surface);

CAIRO_END_DECLS

#endif /* CAIRO_PS_H */
