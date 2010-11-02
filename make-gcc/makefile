#--- REBOL 3.0 Host Makefile - Build A110 - From make-build.r (2-Nov-2010/4:54:56)
#--- This file intentionally kept simple... to work on all platforms.

C= gcc 
#C= cc  (an alternative)
S= ../src
L= ../lib
O= obj
I= $S/include
T= $S/tools

# Set this to the name of the file copy program:
CP=	cp

CFLAGS= -c -O1 -D_FILE_OFFSET_BITS=64 -Wno-pointer-sign -I $S/include/
LIBS= ./libr3.so

INCS= \
	$I/reb-config.h\
	$I/reb-c.h\
	$I/reb-ext.h\
	$I/reb-args.h\
	$I/reb-device.h\
	$I/reb-file.h\
	$I/reb-event.h\
	$I/reb-evtypes.h\
	$I/reb-net.h\
	$I/reb-filereq.h\
	$I/reb-gob.h\
	$I/reb-lib.h

OBJS= \
	$O/host-main.o\
	$O/host-args.o\
	$O/host-device.o\
	$O/host-stdio.o\
	$O/dev-net.o\
	$O/dev-dns.o\
	$O/host-lib.o\
	$O/host-readline.o\
	$O/dev-stdio.o\
	$O/dev-file.o

GFX= \
	$O/host-graphics.o\
	$O/host-event.o\
	$O/host-window.o

AGG= \
	$O/agg_arc.o\
	$O/agg_arrowhead.o\
	$O/agg_bezier_arc.o\
	$O/agg_bspline.o\
	$O/agg_curves.o\
	$O/agg_image_filters.o\
	$O/agg_line_aa_basics.o\
	$O/agg_path_storage.o\
	$O/agg_rasterizer_scanline_aa.o\
	$O/agg_rounded_rect.o\
	$O/agg_sqrt_tables.o\
	$O/agg_trans_affine.o\
	$O/agg_trans_single_path.o\
	$O/agg_vcgen_bspline.o\
	$O/agg_vcgen_contour.o\
	$O/agg_vcgen_dash.o\
	$O/agg_vcgen_markers_term.o\
	$O/agg_vcgen_smooth_poly1.o\
	$O/agg_vcgen_stroke.o\
	$O/agg_vpgen_segmentator.o\
	$O/agg_compo.o\
	$O/agg_graphics.o\
	$O/agg_font_win32_tt.o\
	$O/agg_truetype_text.o\
	$O/compositor.o\
	$O/graphics.o\
	$O/rich_text.o

all:
	-mkdir obj
	make r3core

clean:
	-rm obj/*

core:
	-mkdir obj
	make r3core

r3:	 $(OBJS) $(GFX) $(AGG) libr3.so
	$C $(CFLAGS) -o $O/host-main.o $S/os/host-main.c
	$C -o r3 $(OBJS) $(GFX) $(AGG) $(LIBS)
	strip r3

r3core:	$(OBJS) libr3.so
	$C $(CFLAGS) -DREB_CORE -o $O/host-main.o $S/os/host-main.c
	$C -o r3core $(OBJS) $(LIBS)
	strip r3core

libr3.so: $L/libr3.so
	$(CP) $L/libr3.so .


#--- Convert REBOL files to C files:

exts:
	@echo "REBOL 2.6 or 2.7 needs to be in the make directory"
	rebol -sqw --do "write to-file 'reb now quit"
	rebol -sqw $T/make-host-init.r
	rebol -sqw $T/make-host-ext.r


#--- Host Program:

$O/host-main.o:     $S/os/host-main.c $(INCS) $I/reb-host.h $I/host-lib.h $I/host-init.h
	$C $(CFLAGS)  -o $O/host-main.o $S/os/host-main.c

$O/host-args.o:     $S/os/host-args.c $(INCS) $I/reb-config.h $I/reb-c.h $I/reb-args.h
	$C $(CFLAGS)  -o $O/host-args.o $S/os/host-args.c

$O/host-device.o:   $S/os/host-device.c $(INCS) $I/reb-host.h $I/host-lib.h
	$C $(CFLAGS)  -o $O/host-device.o $S/os/host-device.c

$O/host-stdio.o:    $S/os/host-stdio.c $(INCS) $I/reb-host.h $I/host-lib.h
	$C $(CFLAGS)  -o $O/host-stdio.o $S/os/host-stdio.c

$O/dev-net.o:       $S/os/dev-net.c $(INCS) $I/reb-host.h $I/host-lib.h $I/sys-net.h
	$C $(CFLAGS)  -o $O/dev-net.o $S/os/dev-net.c

$O/dev-dns.o:       $S/os/dev-dns.c $(INCS) $I/reb-host.h $I/host-lib.h $I/sys-net.h
	$C $(CFLAGS)  -o $O/dev-dns.o $S/os/dev-dns.c

$O/host-lib.o:      $S/os/posix/host-lib.c $(INCS) $I/reb-host.h $I/host-lib.h
	$C $(CFLAGS)  -o $O/host-lib.o $S/os/posix/host-lib.c

$O/host-readline.o: $S/os/posix/host-readline.c $(INCS) 
	$C $(CFLAGS)  -o $O/host-readline.o $S/os/posix/host-readline.c

$O/dev-stdio.o:     $S/os/posix/dev-stdio.c $(INCS) $I/reb-host.h $I/host-lib.h
	$C $(CFLAGS)  -o $O/dev-stdio.o $S/os/posix/dev-stdio.c

$O/dev-file.o:      $S/os/posix/dev-file.c $(INCS) $I/reb-host.h $I/host-lib.h
	$C $(CFLAGS)  -o $O/dev-file.o $S/os/posix/dev-file.c


#--- AGG Library:

$O/agg_arc.o:       $S/agg/agg_arc.cpp $(INCS) 
	$C $(CFLAGS)  -o $O/agg_arc.o $S/agg/agg_arc.cpp

$O/agg_arrowhead.o: $S/agg/agg_arrowhead.cpp $(INCS) 
	$C $(CFLAGS)  -o $O/agg_arrowhead.o $S/agg/agg_arrowhead.cpp

$O/agg_bezier_arc.o:$S/agg/agg_bezier_arc.cpp $(INCS) 
	$C $(CFLAGS)  -o $O/agg_bezier_arc.o $S/agg/agg_bezier_arc.cpp

$O/agg_bspline.o:   $S/agg/agg_bspline.cpp $(INCS) 
	$C $(CFLAGS)  -o $O/agg_bspline.o $S/agg/agg_bspline.cpp

$O/agg_curves.o:    $S/agg/agg_curves.cpp $(INCS) 
	$C $(CFLAGS)  -o $O/agg_curves.o $S/agg/agg_curves.cpp

$O/agg_image_filters.o:$S/agg/agg_image_filters.cpp $(INCS) 
	$C $(CFLAGS)  -o $O/agg_image_filters.o $S/agg/agg_image_filters.cpp

$O/agg_line_aa_basics.o:$S/agg/agg_line_aa_basics.cpp $(INCS) 
	$C $(CFLAGS)  -o $O/agg_line_aa_basics.o $S/agg/agg_line_aa_basics.cpp

$O/agg_path_storage.o:$S/agg/agg_path_storage.cpp $(INCS) 
	$C $(CFLAGS)  -o $O/agg_path_storage.o $S/agg/agg_path_storage.cpp

$O/agg_rasterizer_scanline_aa.o:$S/agg/agg_rasterizer_scanline_aa.cpp $(INCS) 
	$C $(CFLAGS)  -o $O/agg_rasterizer_scanline_aa.o $S/agg/agg_rasterizer_scanline_aa.cpp

$O/agg_rounded_rect.o:$S/agg/agg_rounded_rect.cpp $(INCS) 
	$C $(CFLAGS)  -o $O/agg_rounded_rect.o $S/agg/agg_rounded_rect.cpp

$O/agg_sqrt_tables.o:$S/agg/agg_sqrt_tables.cpp $(INCS) 
	$C $(CFLAGS)  -o $O/agg_sqrt_tables.o $S/agg/agg_sqrt_tables.cpp

$O/agg_trans_affine.o:$S/agg/agg_trans_affine.cpp $(INCS) 
	$C $(CFLAGS)  -o $O/agg_trans_affine.o $S/agg/agg_trans_affine.cpp

$O/agg_trans_single_path.o:$S/agg/agg_trans_single_path.cpp $(INCS) 
	$C $(CFLAGS)  -o $O/agg_trans_single_path.o $S/agg/agg_trans_single_path.cpp

$O/agg_vcgen_bspline.o:$S/agg/agg_vcgen_bspline.cpp $(INCS) 
	$C $(CFLAGS)  -o $O/agg_vcgen_bspline.o $S/agg/agg_vcgen_bspline.cpp

$O/agg_vcgen_contour.o:$S/agg/agg_vcgen_contour.cpp $(INCS) 
	$C $(CFLAGS)  -o $O/agg_vcgen_contour.o $S/agg/agg_vcgen_contour.cpp

$O/agg_vcgen_dash.o:$S/agg/agg_vcgen_dash.cpp $(INCS) 
	$C $(CFLAGS)  -o $O/agg_vcgen_dash.o $S/agg/agg_vcgen_dash.cpp

$O/agg_vcgen_markers_term.o:$S/agg/agg_vcgen_markers_term.cpp $(INCS) 
	$C $(CFLAGS)  -o $O/agg_vcgen_markers_term.o $S/agg/agg_vcgen_markers_term.cpp

$O/agg_vcgen_smooth_poly1.o:$S/agg/agg_vcgen_smooth_poly1.cpp $(INCS) 
	$C $(CFLAGS)  -o $O/agg_vcgen_smooth_poly1.o $S/agg/agg_vcgen_smooth_poly1.cpp

$O/agg_vcgen_stroke.o:$S/agg/agg_vcgen_stroke.cpp $(INCS) 
	$C $(CFLAGS)  -o $O/agg_vcgen_stroke.o $S/agg/agg_vcgen_stroke.cpp

$O/agg_vpgen_segmentator.o:$S/agg/agg_vpgen_segmentator.cpp $(INCS) 
	$C $(CFLAGS)  -o $O/agg_vpgen_segmentator.o $S/agg/agg_vpgen_segmentator.cpp

$O/agg_compo.o:     $S/agg/agg_compo.cpp $(INCS) 
	$C $(CFLAGS)  -o $O/agg_compo.o $S/agg/agg_compo.cpp

$O/agg_graphics.o:  $S/agg/agg_graphics.cpp $(INCS) 
	$C $(CFLAGS)  -o $O/agg_graphics.o $S/agg/agg_graphics.cpp

$O/agg_font_win32_tt.o:$S/agg/agg_font_win32_tt.cpp $(INCS) 
	$C $(CFLAGS)  -o $O/agg_font_win32_tt.o $S/agg/agg_font_win32_tt.cpp

$O/agg_truetype_text.o:$S/agg/agg_truetype_text.cpp $(INCS) 
	$C $(CFLAGS)  -o $O/agg_truetype_text.o $S/agg/agg_truetype_text.cpp

$O/compositor.o:    $S/agg/compositor.cpp $(INCS) 
	$C $(CFLAGS)  -o $O/compositor.o $S/agg/compositor.cpp

$O/graphics.o:      $S/agg/graphics.cpp $(INCS) 
	$C $(CFLAGS)  -o $O/graphics.o $S/agg/graphics.cpp

$O/rich_text.o:     $S/agg/rich_text.cpp $(INCS) 
	$C $(CFLAGS)  -o $O/rich_text.o $S/agg/rich_text.cpp

