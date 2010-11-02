REBOL [Title: "Basic TEXT test"]

do %gfx-pre.r

win-size: 420x600
;;; WINDOW
win: make gob! reduce/no-set [offset: 200x20 size: win-size]

;;; background GOB
gobb: make gob! []
gobb/size: win/size
gobb/color: white
append win gobb

append gobb make gob! reduce/no-set [color: sky size: win-size]

gobt: make gob! reduce/no-set [size: win-size]

fnt: make system/standard/font [
	name: "Arial"
	size: 28
]
fnt-uni: make system/standard/font [
	name: "Arial Unicode MS"
	size: 28
]

;note: should every PARA command reset internal values so next TEXT call can be used as a new paragraph?
par: make system/standard/para [
	origin: 0x0	;works
	margin: 0x0 ;Y coord doesn't do anything (should clip text?)
	indent: 0x0	;X cord doesn't work when align=right/center
	tabs: 40		;works
	wrap?: true		;works
	scroll: 0x0		;works
	align: 'left	;works - problem with indent/x in right/center mode
	valign: 'middle ;works
]

gobt/text: to-text [
	anti-alias
	size 14
	bold 
	"This text is bold"
	italic
	" and italic."
	drop 2
	"This text is normal again."
	newline
	size 20
	red
	"red"
	0.128.0
	" green"
	blue
	" blue "
	newline
	red
	"c"
	0.128.0
	"o"
	blue
	"l"
	red
	"o"
	0.128.0
	"u"
	blue
	"r"
	red
	"f"
	0.128.0
	"u"
	blue
	"l"
	" and "
	black
	underline
	"underlined"
	drop 1
	size 12
	right
	newline
	newline
	"Sed convallis magna eu sem. Mauris dictum facilisis augue. Integer lacinia. Suspendisse sagittis ultrices augue. Aliquam ornare wisi eu metus. Vivamus luctus egestas leo. Fusce tellus. Maecenas aliquet accumsan leo. Sed ac dolor sit amet purus malesuada congue. Aliquam erat volutpat. Nulla accumsan, elit sit amet varius semper, nulla mauris mollis quam, tempor suscipit diam nulla vel leo. Fusce nibh. Nulla pulvinar eleifend sem. Fusce wisi. Aliquam erat volutpat. Maecenas lorem. Mauris elementum mauris vitae tortor. Fusce wisi. Duis pulvinar."
	newline
	newline
	center
	"Sed convallis magna eu sem. Mauris dictum facilisis augue. Integer lacinia. Suspendisse sagittis ultrices augue. Aliquam ornare wisi eu metus. Vivamus luctus egestas leo. Fusce tellus. Maecenas aliquet accumsan leo. Sed ac dolor sit amet purus malesuada congue. Aliquam erat volutpat. Nulla accumsan, elit sit amet varius semper, nulla mauris mollis quam, tempor suscipit diam nulla vel leo. Fusce nibh. Nulla pulvinar eleifend sem. Fusce wisi. Aliquam erat volutpat. Maecenas lorem. Mauris elementum mauris vitae tortor. Fusce wisi. Duis pulvinar."
	newline
	newline
	left
	"Sed convallis magna eu sem. Mauris dictum facilisis augue. Integer lacinia. Suspendisse sagittis ultrices augue. Aliquam ornare wisi eu metus. Vivamus luctus egestas leo. Fusce tellus. Maecenas aliquet accumsan leo. Sed ac dolor sit amet purus malesuada congue. Aliquam erat volutpat. Nulla accumsan, elit sit amet varius semper, nulla mauris mollis quam, tempor suscipit diam nulla vel leo. Fusce nibh. Nulla pulvinar eleifend sem. Fusce wisi. Aliquam erat volutpat. Maecenas lorem. Mauris elementum mauris vitae tortor. Fusce wisi. Duis pulvinar."
] copy []

append gobb gobt


window: view/options win [
	title: "Basic TEXT test"
	offset: 'center
	handler: [
		name: 'my-handler
		priority: 100
		handler: func [event] [
			switch event/type [
				close [
					unhandle-events self ; Remove this handler from the global list.
					unview event/window
					quit
				]
				move [
					print ["move:" event/offset]
					show win
				]
				key [
					probe event/key
				]
			]
			none
		]
	]
]
