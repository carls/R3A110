# Microsoft Developer Studio Project File - Name="r3" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Application" 0x0101

CFG=r3 - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "r3.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "r3.mak" CFG="r3 - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "r3 - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "r3 - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "r3 - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /YX /FD /c
# ADD CPP /nologo /Zp4 /MD /W3 /GX /O2 /I "..\src\include" /D "NDEBUG" /D "UNICODE" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /YX /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /machine:I386
# ADD LINK32 wsock32.lib r3lib.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib /nologo /subsystem:windows /machine:I386 /libpath:"..\lib"
# Begin Special Build Tool
SOURCE="$(InputPath)"
PostBuild_Desc=copy lib
PostBuild_Cmds=copy ..\lib\r3lib.dll .
# End Special Build Tool

!ELSEIF  "$(CFG)" == "r3 - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /YX /FD /GZ /c
# ADD CPP /nologo /Zp4 /MD /W3 /Gm /GX /ZI /Od /I "..\src\include" /D "_DEBUG" /D "UNICODE" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /YX /FD /GZ /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /debug /machine:I386 /pdbtype:sept
# ADD LINK32 r3lib.lib wsock32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib /nologo /subsystem:windows /debug /machine:I386 /pdbtype:sept /libpath:"..\lib"
# Begin Special Build Tool
SOURCE="$(InputPath)"
PostBuild_Desc=copy lib
PostBuild_Cmds=copy ..\lib\r3lib.dll .
# End Special Build Tool

!ENDIF 

# Begin Target

# Name "r3 - Win32 Release"
# Name "r3 - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=..\src\agg\agg_arc.cpp
# End Source File
# Begin Source File

SOURCE=..\src\agg\agg_arrowhead.cpp
# End Source File
# Begin Source File

SOURCE=..\src\agg\agg_bezier_arc.cpp
# End Source File
# Begin Source File

SOURCE=..\src\agg\agg_bspline.cpp
# End Source File
# Begin Source File

SOURCE=..\src\agg\agg_compo.cpp
# End Source File
# Begin Source File

SOURCE=..\src\agg\agg_curves.cpp
# End Source File
# Begin Source File

SOURCE=..\src\agg\agg_font_win32_tt.cpp
# End Source File
# Begin Source File

SOURCE=..\src\agg\agg_graphics.cpp
# End Source File
# Begin Source File

SOURCE=..\src\agg\agg_image_filters.cpp
# End Source File
# Begin Source File

SOURCE=..\src\agg\agg_line_aa_basics.cpp
# End Source File
# Begin Source File

SOURCE=..\src\agg\agg_path_storage.cpp
# End Source File
# Begin Source File

SOURCE=..\src\agg\agg_rasterizer_scanline_aa.cpp
# End Source File
# Begin Source File

SOURCE=..\src\agg\agg_rounded_rect.cpp
# End Source File
# Begin Source File

SOURCE=..\src\agg\agg_sqrt_tables.cpp
# End Source File
# Begin Source File

SOURCE=..\src\agg\agg_trans_affine.cpp
# End Source File
# Begin Source File

SOURCE=..\src\agg\agg_trans_single_path.cpp
# End Source File
# Begin Source File

SOURCE=..\src\agg\agg_truetype_text.cpp
# End Source File
# Begin Source File

SOURCE=..\src\agg\agg_vcgen_bspline.cpp
# End Source File
# Begin Source File

SOURCE=..\src\agg\agg_vcgen_contour.cpp
# End Source File
# Begin Source File

SOURCE=..\src\agg\agg_vcgen_dash.cpp
# End Source File
# Begin Source File

SOURCE=..\src\agg\agg_vcgen_markers_term.cpp
# End Source File
# Begin Source File

SOURCE=..\src\agg\agg_vcgen_smooth_poly1.cpp
# End Source File
# Begin Source File

SOURCE=..\src\agg\agg_vcgen_stroke.cpp
# End Source File
# Begin Source File

SOURCE=..\src\agg\agg_vpgen_segmentator.cpp
# End Source File
# Begin Source File

SOURCE=..\src\agg\compositor.cpp
# End Source File
# Begin Source File

SOURCE="..\src\os\win32\dev-clipboard.c"
# End Source File
# Begin Source File

SOURCE="..\src\os\dev-dns.c"
# End Source File
# Begin Source File

SOURCE="..\src\os\win32\dev-event.c"
# End Source File
# Begin Source File

SOURCE="..\src\os\win32\dev-file.c"
# End Source File
# Begin Source File

SOURCE="..\src\os\dev-net.c"
# End Source File
# Begin Source File

SOURCE="..\src\os\win32\dev-stdio.c"
# End Source File
# Begin Source File

SOURCE=..\src\agg\graphics.cpp
# End Source File
# Begin Source File

SOURCE="..\src\os\host-args.c"
# End Source File
# Begin Source File

SOURCE="..\src\os\host-device.c"
# End Source File
# Begin Source File

SOURCE="..\src\os\win32\host-event.c"
# End Source File
# Begin Source File

SOURCE="..\src\os\win32\host-graphics.c"
# End Source File
# Begin Source File

SOURCE="..\src\os\win32\host-lib.c"
# End Source File
# Begin Source File

SOURCE="..\src\os\host-main.c"
# End Source File
# Begin Source File

SOURCE="..\src\os\host-stdio.c"
# End Source File
# Begin Source File

SOURCE="..\src\os\win32\host-window.c"
# End Source File
# Begin Source File

SOURCE=..\src\agg\rich_text.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe"
# End Group
# End Target
# End Project
