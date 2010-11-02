REBOL [
	Title: "Basic CARET test"
	Author: cyphre@seznam.cz
]
do %gfx-pre.r
print "CARET Test..."

;;; WINDOW
win: make gob! [text: "Test Window" offset: 200x100]

;;; background GOB
gobb: make gob! []
gobb/color: leaf
gobb/size: 640x144
win/size: gobb/size
append win gobb


;;; color for text background
gobc: make gob! [offset: 100x10]
gobc/size: 345x120
gobc/color: 255.255.255
append gobb gobc

gobt: make gob! [offset: 0x0]
gobt/size: gobc/size

caret-obj: make object! [
	caret:
	highlight-start:
	highlight-end: none
]

gobt/text: to-text [
	size 30
	anti-alias on
	caret caret-obj
	red "Hello World "
	newline
	bold green "Hello world 2"
	newline
	bold off italic blue "Hello world 3"
] copy []

caret-obj/caret: reduce [at gobt/text 26 at first at gobt/text 26 8]
caret-obj/highlight-start:  reduce [at gobt/text 10 at first at gobt/text 10 5]
caret-obj/highlight-end:  reduce [at gobt/text 17 at first at gobt/text 17 6]

;probe caret-obj

append gobc gobt

init-view-system

view/options win [
	title: "test"
	offset: 'center
	handler: [
		name: 'my-handler
		priority: 100
		handler: func [event] [
			if event/type = 'close [
				unhandle-events self ; Remove this handler from the global list.
				unview event/window
				quit
			]
			none
		]
	]
]




