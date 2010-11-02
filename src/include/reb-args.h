/***********************************************************************
**
**  REBOL 3.0 "Invasion"
**  Copyright 2010 REBOL Technologies
**  All rights reserved.
**
************************************************************************
**
**  Title: Program startup arguments
**  Date:  1-Dec-2009
**  File:  reb-args.h
**
************************************************************************
**
**  Note: arg struct is used by R3 lib, so must not be modified.
**
***********************************************************************/

// REBOL startup option structure:
typedef struct rebol_args {
	REBCNT options;
	REBCHR *script;
	REBCHR *args;
	REBCHR *do_arg;
	REBCHR *version;
	REBCHR *debug;
	REBCHR *import;
	REBCHR *secure;
	REBCHR *boot;
	REBCHR *exe_path;
	REBCHR *home_dir;
} REBARGS;

// REBOL arg option flags:
// Must stay matched to system/catalog/boot-flags.
enum arg_opts {
	ROF_EXT,

	ROF_SCRIPT,
	ROF_ARGS,
	ROF_DO,
	ROF_IMPORT,
	ROF_VERSION,
	ROF_DEBUG,
	ROF_SECURE,

	ROF_HELP,
	ROF_VERS,
	ROF_QUIET,
	ROF_VERBOSE,
	ROF_SECURE_MIN,
	ROF_SECURE_MAX,
	ROF_TRACE,
	ROF_HALT,
	ROF_CGI,
	ROF_BOOT,

	ROF_IGNORE, // not an option
};

#define RO_EXT         (1<<ROF_EXT)
#define RO_HELP        (1<<ROF_HELP)
#define RO_IMPORT      (1<<ROF_IMPORT)
#define RO_CGI         (1<<ROF_CGI)
#define RO_ARGS        (1<<ROF_ARGS)
#define RO_DO          (1<<ROF_DO)
#define RO_DEBUG       (1<<ROF_DEBUG)
#define RO_SECURE_MIN  (1<<ROF_SECURE_MIN)
#define RO_SECURE_MAX  (1<<ROF_SECURE_MAX)
#define RO_QUIET       (1<<ROF_QUIET)
#define RO_SCRIPT      (1<<ROF_SCRIPT)
#define RO_SECURE      (1<<ROF_SECURE)
#define RO_TRACE       (1<<ROF_TRACE)
#define RO_VERSION     (1<<ROF_VERSION)
#define RO_VERS        (1<<ROF_VERS)
#define RO_VERBOSE     (1<<ROF_VERBOSE)
#define RO_HALT        (1<<ROF_HALT)
#define RO_BOOT        (1<<ROF_BOOT)

#define RO_IGNORE      (1<<ROF_IGNORE)

void Parse_Args(int argc, REBCHR **argv, REBARGS *rargs);
