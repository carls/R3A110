/***********************************************************************
**
**  REBOL 3.0 "Invasion"
**  Copyright 2010 REBOL Technologies
**  All rights reserved.
**
************************************************************************
**
**  Title: Miscellaneous structures and definitions
**  Date:  16-July-2010
**  File:  reb_defs.h
**
**  Note: This file is used by internal and external C code. It
**  should not depend on many other header files prior to it.
**
***********************************************************************/

#ifndef REB_DEFS_H  // due to sequences within the lib build itself
#define REB_DEFS_H

#ifndef REB_DEF
typedef void *REBSER;
typedef void *REBOBJ;
#endif

#pragma pack(4)

// X/Y coordinate pair as floats:
typedef struct rebol_xy_float {
	float x;
	float y;
} REBXYF;

// X/Y coordinate pair as integers:
typedef struct rebol_xy_int {
	int x;
	int y;
} REBXYI;

#define REBPAR REBXYI  // temporary until all sources are converted

// Standard date and time:
typedef struct rebol_dat {
	int year;
	int month;
	int day;
	int time;
	int nano;
	int zone;
} REBOL_DAT;  // not same as REBDAT

// OS metrics: (not used as of A100!)
typedef struct rebol_met {
	int len; // # entries in this table
	REBPAR screen_size;
	REBPAR title_size;
	REBPAR border_size;
	REBPAR border_fixed;
	REBPAR work_origin;
	REBPAR work_size;
} X_REBOL_OS_METRICS;

#pragma pack()

#endif
