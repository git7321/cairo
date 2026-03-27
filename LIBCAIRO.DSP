# Microsoft Developer Studio Project File - Name="libcairo" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=libcairo - Win32 DLL Release
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "LIBCAIRO.MAK".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "LIBCAIRO.MAK" CFG="libcairo - Win32 DLL Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "libcairo - Win32 DLL Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe
# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "..\"
# PROP BASE Intermediate_Dir "..\"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "..\"
# PROP Intermediate_Dir "..\"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MD /W3 /Gy /I "." /I ".\src" /I ".\pixman" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D WINVER=0x0500 /D _WIN32_WINNT=0x0500 /D "WIN32_LEAN_AND_MEAN" /D "USE_X86_MMX" /D "CAIRO_DLL" /D "DLL_EXPORTS" /FD /Oxs /GF /GL /c
# ADD CPP /nologo /MD /W3 /Gy /I "." /I ".\src" /I ".\pixman" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D WINVER=0x0500 /D _WIN32_WINNT=0x0500 /D "WIN32_LEAN_AND_MEAN" /D "USE_X86_MMX" /D "CAIRO_DLL" /D "DLL_EXPORTS" /FD /Oxs /GF /GL /c
# ADD BASE MTL /nologo /win32
# ADD MTL /nologo /win32
# ADD BASE RSC /l 0x409 /d "NDEBUG" /c 1252
# ADD RSC /l 0x409 /d "NDEBUG" /c 1252
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib ..\zlib\zlib.lib ..\png\libpng.lib msimg32.lib msvcrt.lib /nologo /base:"0x786A0000" /version:5.2 /dll /debug /machine:I386 /osversion:5.2 /opt:ref,icf,nowin98 /release /ltcg
# ADD LINK32 kernel32.lib user32.lib gdi32.lib ..\zlib\zlib.lib ..\png\libpng.lib msimg32.lib msvcrt.lib /nologo /base:"0x786A0000" /version:5.2 /dll /debug /machine:I386 /osversion:5.2 /opt:ref,icf,nowin98 /release /ltcg
# Begin Target

# Name "libcairo - Win32 DLL Release"
# Begin Group "Source Files"

# PROP Default_Filter "c"
# Begin Group "Pixman"

# PROP Default_Filter ""
# Begin Source File

SOURCE=".\pixman\pixman-access-accessors.c"
# End Source File
# Begin Source File

SOURCE=".\pixman\pixman-access.c"
# End Source File
# Begin Source File

SOURCE=".\pixman\pixman-accessor.h"
# End Source File
# Begin Source File

SOURCE=".\pixman\pixman-bits-image.c"
# End Source File
# Begin Source File

SOURCE=".\pixman\pixman-combine-float.c"
# End Source File
# Begin Source File

SOURCE=".\pixman\pixman-combine-float.h"
# End Source File
# Begin Source File

SOURCE=".\pixman\pixman-combine32.c"
# End Source File
# Begin Source File

SOURCE=".\pixman\pixman-combine32.h"
# End Source File
# Begin Source File

SOURCE=".\pixman\pixman-compiler.h"
# End Source File
# Begin Source File

SOURCE=".\pixman\pixman-conical-gradient.c"
# End Source File
# Begin Source File

SOURCE=".\pixman\pixman-edge-accessors.c"
# End Source File
# Begin Source File

SOURCE=".\pixman\pixman-edge-imp.h"
# End Source File
# Begin Source File

SOURCE=".\pixman\pixman-edge.c"
# End Source File
# Begin Source File

SOURCE=".\pixman\pixman-fast-path.c"
# End Source File
# Begin Source File

SOURCE=".\pixman\pixman-filter.c"
# End Source File
# Begin Source File

SOURCE=".\pixman\pixman-general.c"
# End Source File
# Begin Source File

SOURCE=".\pixman\pixman-glyph.c"
# End Source File
# Begin Source File

SOURCE=".\pixman\pixman-gradient-walker.c"
# End Source File
# Begin Source File

SOURCE=".\pixman\pixman-image.c"
# End Source File
# Begin Source File

SOURCE=".\pixman\pixman-implementation.c"
# End Source File
# Begin Source File

SOURCE=".\pixman\pixman-inlines.h"
# End Source File
# Begin Source File

SOURCE=".\pixman\pixman-linear-gradient.c"
# End Source File
# Begin Source File

SOURCE=".\pixman\pixman-matrix.c"
# End Source File
# Begin Source File

SOURCE=".\pixman\pixman-mmx.c"
# End Source File
# Begin Source File

SOURCE=".\pixman\pixman-noop.c"
# End Source File
# Begin Source File

SOURCE=".\pixman\pixman-private.h"
# End Source File
# Begin Source File

SOURCE=".\pixman\pixman-radial-gradient.c"
# End Source File
# Begin Source File

SOURCE=".\pixman\pixman-region.c"
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=".\pixman\pixman-region16.c"
# End Source File
# Begin Source File

SOURCE=".\pixman\pixman-region32.c"
# End Source File
# Begin Source File

SOURCE=".\pixman\pixman-solid-fill.c"
# End Source File
# Begin Source File

SOURCE=".\pixman\pixman-timer.c"
# End Source File
# Begin Source File

SOURCE=".\pixman\pixman-trap.c"
# End Source File
# Begin Source File

SOURCE=".\pixman\pixman-utils.c"
# End Source File
# Begin Source File

SOURCE=".\pixman\pixman-version.h"
# End Source File
# Begin Source File

SOURCE=".\pixman\pixman-x86.c"
# End Source File
# Begin Source File

SOURCE=.\pixman\pixman.c
# End Source File
# Begin Source File

SOURCE=.\pixman\pixman.h
# End Source File
# End Group
# Begin Source File

SOURCE=".\src\cairo-analysis-surface-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-analysis-surface.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-arc-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-arc.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-array-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-array.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-atomic-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-atomic.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-backend-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-base64-stream.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-base85-stream.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-bentley-ottmann-rectangular.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-bentley-ottmann-rectilinear.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-bentley-ottmann.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-botor-scan-converter.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-box-inline.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-boxes-intersect.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-boxes-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-boxes.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-cache-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-cache.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-cff-subset.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-clip-boxes.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-clip-inline.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-clip-polygon.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-clip-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-clip-region.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-clip-surface.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-clip-tor-scan-converter.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-clip.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-color.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-combsort-inline.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-compiler-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-composite-rectangles-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-composite-rectangles.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-compositor-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-compositor.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-contour-inline.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-contour-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-contour.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-damage-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-damage.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-debug.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-default-context-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-default-context.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-deflate-stream.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-device-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-device.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-error-inline.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-error-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-error.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-fallback-compositor.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-fixed-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-fixed-type-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-fixed.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-font-face-twin-data.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-font-face-twin.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-font-face.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-font-options.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-freed-pool-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-freed-pool.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-freelist-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-freelist-type-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-freelist.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-gstate-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-gstate.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-hash-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-hash.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-hull.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-image-compositor.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-image-info-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-image-info.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-image-source.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-image-surface-inline.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-image-surface-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-image-surface.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-line-inline.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-line-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-line.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-list-inline.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-list-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-lzw.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-malloc-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-mask-compositor.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-matrix.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-mempool-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-mempool.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-mesh-pattern-rasterizer.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-misc.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-mono-scan-converter.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-mutex-impl-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-mutex-list-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-mutex-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-mutex-type-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-mutex.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-no-compositor.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-observer.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-output-stream-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-output-stream.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-paginated-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-paginated-surface-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-paginated-surface.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-path-bounds.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-path-fill.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-path-fixed-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-path-fixed.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-path-in-fill.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-path-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-path-stroke-boxes.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-path-stroke-polygon.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-path-stroke-traps.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-path-stroke-tristrip.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-path-stroke.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-path.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-pattern-inline.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-pattern-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-pattern.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-pdf-operators-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-pdf-operators.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-pdf-shading-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-pdf-shading.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-pdf-surface-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-pdf-surface.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-pen.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-pixman-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-png.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-polygon-intersect.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-polygon-reduce.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-polygon.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-ps-surface-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-ps-surface.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-raster-source-pattern.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-recording-surface-inline.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-recording-surface-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-recording-surface.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-rectangle.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-rectangular-scan-converter.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-reference-count-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-region-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-region.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-rtree-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-rtree.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-scaled-font-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-scaled-font-subsets-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-scaled-font-subsets.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-scaled-font.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-script-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-script-surface.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-shape-mask-compositor.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-slope-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-slope.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-spans-compositor-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-spans-compositor.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-spans-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-spans.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-spline.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-stroke-dash-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-stroke-dash.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-stroke-style.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-surface-backend-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-surface-clipper-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-surface-clipper.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-surface-fallback-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-surface-fallback.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-surface-inline.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-surface-observer-inline.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-surface-observer-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-surface-observer.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-surface-offset-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-surface-offset.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-surface-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-surface-snapshot-inline.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-surface-snapshot-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-surface-snapshot.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-surface-subsurface-inline.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-surface-subsurface-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-surface-subsurface.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-surface-wrapper-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-surface-wrapper.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-surface.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-svg-surface-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-svg-surface.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-tee-surface-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-tee-surface.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-time-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-time.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-tor-scan-converter.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-tor22-scan-converter.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-toy-font-face.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-traps-compositor.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-traps-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-traps.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-tristrip-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-tristrip.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-truetype-subset-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-truetype-subset.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-type1-fallback.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-type1-glyph-names.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-type1-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-type1-subset.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-type3-glyph-surface-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-type3-glyph-surface.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-types-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-unicode.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-user-font-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-user-font.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-version.c"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-wideint-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-wideint-type-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\cairo-wideint.c"
# End Source File
# Begin Source File

SOURCE=".\src\win32\cairo-win32-device.c"
# End Source File
# Begin Source File

SOURCE=".\src\win32\cairo-win32-display-surface.c"
# End Source File
# Begin Source File

SOURCE=".\src\win32\cairo-win32-font.c"
# End Source File
# Begin Source File

SOURCE=".\src\win32\cairo-win32-gdi-compositor.c"
# End Source File
# Begin Source File

SOURCE=".\src\win32\cairo-win32-printing-surface.c"
# End Source File
# Begin Source File

SOURCE=".\src\win32\cairo-win32-private.h"
# End Source File
# Begin Source File

SOURCE=".\src\win32\cairo-win32-surface.c"
# End Source File
# Begin Source File

SOURCE=".\src\win32\cairo-win32-system.c"
# End Source File
# Begin Source File

SOURCE=.\src\cairo.c
# End Source File
# Begin Source File

SOURCE=.\src\cairoint.h
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\libcairo.rc
# End Source File
# End Group
# End Target
# End Project
