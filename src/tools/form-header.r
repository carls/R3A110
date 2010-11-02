REBOL [Title: "Standard source code header"]

bv: load %../boot/version.r

form-header: func [title [string!] file [file!] /gen by] [

	by: either gen [
		rejoin [{**  AUTO-GENERATED FILE - Do not modify. (From: } by {)^/**^/}]
	][""]

	rejoin [
{/***********************************************************************
**
**  REBOL 3.0 "Invasion"
**  Copyright } now/year { REBOL Technologies
**  All rights reserved.
**
************************************************************************
**
**  Title: } title {
**  Build: A} bv/3 {
**  Date:  } now/date {
**  File:  } file {
**
} by 
{***********************************************************************/

}
]
]
