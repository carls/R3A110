/***********************************************************************
**
**  REBOL 3.0 "Invasion"
**  Copyright 2010 REBOL Technologies
**  All rights reserved.
**
************************************************************************
**
**  Title: Network device definitions
**  Date:  1-Dec-2009
**  File:  reb-net.h
**
***********************************************************************/

// REBOL Socket types:
enum socket_types {
	RST_UDP,					// TCP or UDP
	RST_LISTEN = 8,				// LISTEN
	RST_REVERSE,				// DNS reverse
};

// REBOL Socket Modes (state flags)
enum {
	RSM_OPEN = 0,				// socket is allocated
	RSM_ATTEMPT,				// attempting connection
	RSM_CONNECT,				// connection is open
	RSM_BIND,					// socket is bound to port
	RSM_LISTEN,					// socket is listening (TCP)
	RSM_SEND,					// sending
	RSM_RECEIVE,				// receiving
	RSM_ACCEPT,					// an inbound connection
};

#define IPA(a,b,c,d) (a<<24 | b<<16 | c<<8 | d)
