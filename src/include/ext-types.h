/***********************************************************************
**
**  REBOL 3.0 "Invasion"
**  Copyright 2010 REBOL Technologies
**  All rights reserved.
**
************************************************************************
**
**  Title: Extension Types (Isolators)
**  Build: A110
**  Date:  1-Nov-2010
**  File:  ext-types.h
**
**  AUTO-GENERATED FILE - Do not modify. (From: make-boot.r)
**
***********************************************************************/


enum REBOL_Ext_Types
{
    RXT_END = 0,			// 0
    RXT_UNSET,				// 1
    RXT_NONE,				// 2
    RXT_HANDLE,				// 3
    RXT_LOGIC = 4,			// 4
    RXT_INTEGER,			// 5
    RXT_DECIMAL,			// 6
    RXT_PERCENT,			// 7
    RXT_CHAR = 10,			// 8
    RXT_PAIR,				// 9
    RXT_TUPLE,				// 10
    RXT_TIME,				// 11
    RXT_DATE,				// 12
    RXT_WORD = 16,			// 13
    RXT_SET_WORD,			// 14
    RXT_GET_WORD,			// 15
    RXT_LIT_WORD,			// 16
    RXT_REFINEMENT,			// 17
    RXT_ISSUE,				// 18
    RXT_STRING = 24,		// 19
    RXT_FILE,				// 20
    RXT_EMAIL,				// 21
    RXT_URL,				// 22
    RXT_TAG,				// 23
    RXT_BLOCK = 32,			// 24
    RXT_PAREN,				// 25
    RXT_PATH,				// 26
    RXT_SET_PATH,			// 27
    RXT_GET_PATH,			// 28
    RXT_LIT_PATH,			// 29
    RXT_BINARY = 40,		// 30
    RXT_BITSET,				// 31
    RXT_VECTOR,				// 32
    RXT_IMAGE,				// 33
    RXT_GOB = 47,			// 34
    RXT_OBJECT = 48,		// 35
    RXT_MODULE,				// 36
    RXT_MAX
};
