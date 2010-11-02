REBOL [
	Title: "REBOL 3 Boot Base: Constants and Equates"
	Rights: "Copyright REBOL Technologies 2010"
	File: %base-constants.r
	Note: {
		This code is evaluated just after actions, natives, sysobj, and other lower
		levels definitions. This file intializes a minimal working environment
		that is used for the rest of the boot.
	}
]

; NOTE: The system is not fully booted at this point, so only simple
; expressions are allowed. Anything else will crash the boot.

;-- Stanard constants:
on:  true
off: false
yes: true
no:  false
zero: 0

;-- Special values:
REBOL: system
sys: system/contexts/sys
lib: system/contexts/lib

;-- Char contstants:
null:      #"^(NULL)"
space:     #" "
sp:        space
backspace: #"^(BACK)"
bs:        backspace
tab:       #"^-"
newline:   #"^/"
newpage:   #"^l"
slash:     #"/"
backslash: #"\"
escape:    #"^(ESC)"
cr:        #"^M"
lf:        newline
crlf:      "^M^J"

;-- Function synonyms:
q: :quit
!: :not
min: :minimum
max: :maximum
abs: :absolute
empty?: :tail?
---: :comment

rebol.com: http://www.rebol.com
