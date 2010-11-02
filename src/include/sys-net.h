/***********************************************************************
**
**  REBOL 3.0 "Invasion"
**  Copyright 2010 REBOL Technologies
**  All rights reserved.
**
************************************************************************
**
**  Title: System network definitions
**  Date:  1-Dec-2009
**  File:  sys-net.h
**
***********************************************************************/

//----- Windows - "Network standards? What network standards?" -Bill G.
#ifdef TO_WIN32

#include <winsock.h>

#define GET_ERROR		WSAGetLastError()
#define IOCTL			ioctlsocket
#define CLOSE_SOCKET	closesocket

#define NE_ISCONN		WSAEISCONN
#define NE_WOULDBLOCK	WSAEWOULDBLOCK
#define NE_INPROGRESS	WSAEINPROGRESS
#define NE_ALREADY		WSAEALREADY
#define NE_NOTCONN		WSAENOTCONN
#define NE_INVALID		WSAEINVAL

//----- BSD - The network standard the rest of the world uses
#else

#include <errno.h>
#include <fcntl.h>
#include <netdb.h>
#include <sys/socket.h>
#include <netinet/in.h>

#define GET_ERROR		errno
#define IOCTL			ioctl
#define CLOSE_SOCKET	close
#define SOCKET			unsigned int

#define NE_ISCONN		EISCONN
#define NE_WOULDBLOCK	EAGAIN		// see include/asm/errno.h
#define NE_INPROGRESS	EINPROGRESS
#define NE_ALREADY		EALREADY
#define NE_NOTCONN		ENOTCONN
#define NE_INVALID		EINVAL

// Null Win32 functions:
#define WSADATA int

// FreeBSD mystery define:
#ifndef u_int32_t
#define u_int32_t long
#endif

#ifndef HOSTENT
typedef struct hostent HOSTENT;
#endif

#ifndef MAXGETHOSTSTRUCT
#define MAXGETHOSTSTRUCT ((sizeof(struct hostent)+15) & ~15)
#endif

#endif // BSD

typedef struct sockaddr_in SOCKAI; // Internet extensions

#define BAD_SOCKET (~0)
#define MAX_TRANSFER 32000		// Max send/recv buffer size
#define MAX_HOST_NAME 256		// Max length of host name
