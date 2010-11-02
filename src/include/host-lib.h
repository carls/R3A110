/***********************************************************************
**
**  REBOL 3.0 "Invasion"
**  Copyright 2010 REBOL Technologies
**  All rights reserved.
**
************************************************************************
**
**  Title: Host Access Library
**  Build: A110
**  Date:  1-Nov-2010
**  File:  host-lib.h
**
**  AUTO-GENERATED FILE - Do not modify. (From: make-os-ext.r)
**
***********************************************************************/


#define HOST_LIB_VER 110
#define HOST_LIB_SUM 62420
#define HOST_LIB_SIZE 32


typedef struct REBOL_Host_Lib {
	int size;
	unsigned int ver_sum;
	REBINT (*os_config)(int id, REBYTE *result);
	void *(*os_make)(size_t size);
	void (*os_free)(void *mem);
	void (*os_exit)(int code);
	void (*os_crash)(const REBYTE *title, const REBYTE *content);
	REBCHR *(*os_form_error)(int errnum, REBCHR *str, int len);
	BOOL (*os_get_boot_path)(REBCHR *name);
	REBCHR *(*os_get_locale)(int what);
	REBCHR *(*os_get_env)(REBCHR *var, int mode);
	int (*os_set_env)(REBCHR *expr, int mode);
	REBCHR *(*os_list_env)(void);
	void (*os_get_time)(REBOL_DAT *dat);
	i64 (*os_delta_time)(i64 base, int flags);
	int (*os_get_current_dir)(REBCHR **path);
	BOOL (*os_set_current_dir)(REBCHR *path);
	void (*os_file_time)(REBREQ *file, REBOL_DAT *dat);
	void *(*os_open_library)(REBCHR *path, REBCNT *error);
	void (*os_close_library)(void *dll);
	void *(*os_find_function)(void *dll, char *funcname);
	REBINT (*os_create_thread)(CFUNC init, void *arg, REBCNT stack_size);
	void (*os_delete_thread)(void);
	void (*os_task_ready)(REBINT tid);
	int (*os_create_process)(REBCHR *call, u32 flags);
	int (*os_browse)(REBCHR *url, int reserved);
	BOOL (*os_request_file)(REBRFR *fr);
	REBSER *(*os_gob_to_image)(REBGOB *gob);
	int (*os_call_device)(REBINT device, REBCNT command);
	int (*os_do_device)(REBREQ *req, REBCNT command);
	REBREQ *(*os_make_devreq)(int device);
	int (*os_abort_device)(REBREQ *req);
	int (*os_poll_devices)(void);
	REBINT (*os_wait)(REBCNT millisec, REBCNT res);
} REBOL_HOST_LIB;

//** Included by HOST *********************************************

#ifndef REB_DEF

extern REBINT OS_Config(int id, REBYTE *result);    // host-lib.c
extern void *OS_Make(size_t size);    // host-lib.c
extern void OS_Free(void *mem);    // host-lib.c
extern void OS_Exit(int code);    // host-lib.c
extern void OS_Crash(const REBYTE *title, const REBYTE *content);    // host-lib.c
extern REBCHR *OS_Form_Error(int errnum, REBCHR *str, int len);    // host-lib.c
extern BOOL OS_Get_Boot_Path(REBCHR *name);    // host-lib.c
extern REBCHR *OS_Get_Locale(int what);    // host-lib.c
extern REBCHR *OS_Get_Env(REBCHR *var, int mode);    // host-lib.c
extern int OS_Set_Env(REBCHR *expr, int mode);    // host-lib.c
extern REBCHR *OS_List_Env(void);    // host-lib.c
extern void OS_Get_Time(REBOL_DAT *dat);    // host-lib.c
extern i64 OS_Delta_Time(i64 base, int flags);    // host-lib.c
extern int OS_Get_Current_Dir(REBCHR **path);    // host-lib.c
extern BOOL OS_Set_Current_Dir(REBCHR *path);    // host-lib.c
extern void OS_File_Time(REBREQ *file, REBOL_DAT *dat);    // host-lib.c
extern void *OS_Open_Library(REBCHR *path, REBCNT *error);    // host-lib.c
extern void OS_Close_Library(void *dll);    // host-lib.c
extern void *OS_Find_Function(void *dll, char *funcname);    // host-lib.c
extern REBINT OS_Create_Thread(CFUNC init, void *arg, REBCNT stack_size);    // host-lib.c
extern void OS_Delete_Thread(void);    // host-lib.c
extern void OS_Task_Ready(REBINT tid);    // host-lib.c
extern int OS_Create_Process(REBCHR *call, u32 flags);    // host-lib.c
extern int OS_Browse(REBCHR *url, int reserved);    // host-lib.c
extern BOOL OS_Request_File(REBRFR *fr);    // host-lib.c
extern REBSER *OS_GOB_To_Image(REBGOB *gob);    // host-lib.c
extern int OS_Call_Device(REBINT device, REBCNT command);    // ../host-device.c
extern int OS_Do_Device(REBREQ *req, REBCNT command);    // ../host-device.c
extern REBREQ *OS_Make_Devreq(int device);    // ../host-device.c
extern int OS_Abort_Device(REBREQ *req);    // ../host-device.c
extern int OS_Poll_Devices(void);    // ../host-device.c
extern REBINT OS_Wait(REBCNT millisec, REBCNT res);    // ../host-device.c

#ifdef OS_LIB_TABLE

REBOL_HOST_LIB *Host_Lib;

REBOL_HOST_LIB Host_Lib_Init = {  // Host library function vector table.
	HOST_LIB_SIZE,
	(HOST_LIB_VER << 16) + HOST_LIB_SUM,
	OS_Config,
	OS_Make,
	OS_Free,
	OS_Exit,
	OS_Crash,
	OS_Form_Error,
	OS_Get_Boot_Path,
	OS_Get_Locale,
	OS_Get_Env,
	OS_Set_Env,
	OS_List_Env,
	OS_Get_Time,
	OS_Delta_Time,
	OS_Get_Current_Dir,
	OS_Set_Current_Dir,
	OS_File_Time,
	OS_Open_Library,
	OS_Close_Library,
	OS_Find_Function,
	OS_Create_Thread,
	OS_Delete_Thread,
	OS_Task_Ready,
	OS_Create_Process,
	OS_Browse,
	OS_Request_File,
	OS_GOB_To_Image,
	OS_Call_Device,
	OS_Do_Device,
	OS_Make_Devreq,
	OS_Abort_Device,
	OS_Poll_Devices,
	OS_Wait,
};

#endif //OS_LIB_TABLE 

#else //REB_DEF

//** Included by REBOL ********************************************

extern	REBOL_HOST_LIB *Host_Lib;

#define OS_CONFIG(a,b)              Host_Lib->os_config(a,b)
#define OS_MAKE(a)                  Host_Lib->os_make(a)
#define OS_FREE(a)                  Host_Lib->os_free(a)
#define OS_EXIT(a)                  Host_Lib->os_exit(a)
#define OS_CRASH(a,b)               Host_Lib->os_crash(a,b)
#define OS_FORM_ERROR(a,b,c)        Host_Lib->os_form_error(a,b,c)
#define OS_GET_BOOT_PATH(a)         Host_Lib->os_get_boot_path(a)
#define OS_GET_LOCALE(a)            Host_Lib->os_get_locale(a)
#define OS_GET_ENV(a,b)             Host_Lib->os_get_env(a,b)
#define OS_SET_ENV(a,b)             Host_Lib->os_set_env(a,b)
#define OS_LIST_ENV()               Host_Lib->os_list_env()
#define OS_GET_TIME(a)              Host_Lib->os_get_time(a)
#define OS_DELTA_TIME(a,b)          Host_Lib->os_delta_time(a,b)
#define OS_GET_CURRENT_DIR(a)       Host_Lib->os_get_current_dir(a)
#define OS_SET_CURRENT_DIR(a)       Host_Lib->os_set_current_dir(a)
#define OS_FILE_TIME(a,b)           Host_Lib->os_file_time(a,b)
#define OS_OPEN_LIBRARY(a,b)        Host_Lib->os_open_library(a,b)
#define OS_CLOSE_LIBRARY(a)         Host_Lib->os_close_library(a)
#define OS_FIND_FUNCTION(a,b)       Host_Lib->os_find_function(a,b)
#define OS_CREATE_THREAD(a,b,c)     Host_Lib->os_create_thread(a,b,c)
#define OS_DELETE_THREAD()          Host_Lib->os_delete_thread()
#define OS_TASK_READY(a)            Host_Lib->os_task_ready(a)
#define OS_CREATE_PROCESS(a,b)      Host_Lib->os_create_process(a,b)
#define OS_BROWSE(a,b)              Host_Lib->os_browse(a,b)
#define OS_REQUEST_FILE(a)          Host_Lib->os_request_file(a)
#define OS_GOB_TO_IMAGE(a)          Host_Lib->os_gob_to_image(a)
#define OS_CALL_DEVICE(a,b)         Host_Lib->os_call_device(a,b)
#define OS_DO_DEVICE(a,b)           Host_Lib->os_do_device(a,b)
#define OS_MAKE_DEVREQ(a)           Host_Lib->os_make_devreq(a)
#define OS_ABORT_DEVICE(a)          Host_Lib->os_abort_device(a)
#define OS_POLL_DEVICES()           Host_Lib->os_poll_devices()
#define OS_WAIT(a,b)                Host_Lib->os_wait(a,b)

#endif //REB_DEF
