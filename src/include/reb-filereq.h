/***********************************************************************
**
**  REBOL 3.0 "Invasion"
**  Copyright 2010 REBOL Technologies
**  All rights reserved.
**
************************************************************************
**
**  Title: File requestor definitions
**  Date:  1-Dec-2009
**  File:  reb-filereq.h
**
***********************************************************************/

#define MAX_FILE_REQ_BUF (16*1024)

#pragma pack(4)
typedef struct Reb_File_Requestor {
	REBCNT flags;	// multi, load/save, unicode
	REBCHR *title;	// title of requestor
	REBCHR *button; // button name
	REBCHR *dir;	// dir path
	REBCHR *files;	// buffer to hold results
	REBCHR *filter;	// buffer to hold results
	REBINT len;		// length of buffer
} REBRFR;
#pragma pack()

// File Request Flags:
enum {
	FRF_MULTI,
	FRF_SAVE,
	FRF_KEEP,
};

