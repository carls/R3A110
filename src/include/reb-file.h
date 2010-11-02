/***********************************************************************
**
**  REBOL 3.0 "Invasion"
**  Copyright 2010 REBOL Technologies
**  All rights reserved.
**
************************************************************************
**
**  Title: Special file device definitions
**  Date:  1-Dec-2009
**  File:  reb-file.h
**
***********************************************************************/

// RFM - REBOL File Modes
enum {
	RFM_READ = 0,
	RFM_WRITE,
	RFM_APPEND,
	RFM_SEEK,
	RFM_NEW,
	RFM_READONLY,
	RFM_TRUNCATE,
	RFM_RESEEK,			// file index has moved, reseek
	RFM_NAME_MEM,		// converted name allocated in mem
	RFM_DIR = 16,
};

// RFE - REBOL File Error
enum {
	RFE_BAD_PATH = 1,
	RFE_NO_MODES,		// No file modes specified
	RFE_OPEN_FAIL,		// File open failed
	RFE_BAD_SEEK,		// Seek not supported for this file
	RFE_NO_HANDLE,		// File struct has no handle
	RFE_NO_SEEK,		// Seek action failed
	RFE_BAD_READ,		// Read failed (general)
	RFE_BAD_WRITE,		// Write failed (general)
	RFE_DISK_FULL,		// No space on target volume
};

#define MAX_FILE_NAME 1022
