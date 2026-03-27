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

#ifndef CAIRO_PDF_H
#define CAIRO_PDF_H

#include <cairo.h>

CAIRO_BEGIN_DECLS

typedef enum _cairo_pdf_version {
    CAIRO_PDF_VERSION_1_4,
    CAIRO_PDF_VERSION_1_5
} cairo_pdf_version_t;

cairo_public cairo_surface_t * __cdecl
cairo_pdf_surface_create (const char *filename,
                   double width_in_points,
                   double height_in_points);

cairo_public cairo_surface_t * __cdecl
cairo_pdf_surface_create_for_stream (cairo_write_func_t write_func,
                   void  *closure,
                   double width_in_points,
                   double height_in_points);

cairo_public void __cdecl
cairo_pdf_surface_restrict_to_version (cairo_surface_t *surface,
                   cairo_pdf_version_t version);

cairo_public void __cdecl
cairo_pdf_get_versions (cairo_pdf_version_t const **versions,
                   int *num_versions);

cairo_public const char * __cdecl
cairo_pdf_version_to_string (cairo_pdf_version_t version);

cairo_public void __cdecl
cairo_pdf_surface_set_size (cairo_surface_t *surface,
                   double   width_in_points,
                   double   height_in_points);

CAIRO_END_DECLS

#endif /* CAIRO_PDF_H */
