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

#ifndef _CAIRO_WIN32_H_
#define _CAIRO_WIN32_H_

#include <cairo.h>

CAIRO_BEGIN_DECLS

cairo_public cairo_surface_t * __cdecl
cairo_win32_surface_create (HDC hdc);

cairo_public cairo_surface_t * __cdecl
cairo_win32_printing_surface_create (HDC hdc);

cairo_public cairo_surface_t * __cdecl
cairo_win32_surface_create_with_ddb (HDC hdc,
                                     cairo_format_t format,
                                     int width,
                                     int height);

cairo_public cairo_surface_t * __cdecl
cairo_win32_surface_create_with_dib (cairo_format_t format,
                                     int width,
                                     int height);

cairo_public HDC __cdecl
cairo_win32_surface_get_dc (cairo_surface_t *surface);

cairo_public cairo_surface_t * __cdecl
cairo_win32_surface_get_image (cairo_surface_t *surface);

cairo_public cairo_font_face_t * __cdecl
cairo_win32_font_face_create_for_logfontw (LOGFONTW *logfont);

cairo_public cairo_font_face_t * __cdecl
cairo_win32_font_face_create_for_hfont (HFONT font);

cairo_public cairo_font_face_t * __cdecl
cairo_win32_font_face_create_for_logfontw_hfont (LOGFONTW *logfont, HFONT font);

cairo_public cairo_status_t __cdecl
cairo_win32_scaled_font_select_font (cairo_scaled_font_t *scaled_font,
                                     HDC hdc);

cairo_public void __cdecl
cairo_win32_scaled_font_done_font (cairo_scaled_font_t *scaled_font);

cairo_public double __cdecl
cairo_win32_scaled_font_get_metrics_factor (cairo_scaled_font_t *scaled_font);

cairo_public void __cdecl
cairo_win32_scaled_font_get_logical_to_device (cairo_scaled_font_t *scaled_font,
            cairo_matrix_t *logical_to_device);

cairo_public void __cdecl
cairo_win32_scaled_font_get_device_to_logical (cairo_scaled_font_t *scaled_font,
            cairo_matrix_t *device_to_logical);

CAIRO_END_DECLS

#endif /* _CAIRO_WIN32_H_ */
