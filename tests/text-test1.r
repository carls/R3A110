REBOL [Title: "Basic TEXT test"]

do %gfx-pre.r

win-size: 420x640
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
	font fnt-uni
	underline
	bold
	"Unicode text works in HostKit!"
	drop 2
	size 11
	"You need 'Arial Unicode MS' truetype font for this demo or some other font with wide range of unicode support"
	newline
	drop 1
	underline off	
	bold off
	navy	
	"Arabic - ضطفقحڭڦڞ۞"
	newline
	"Armenian - ՅՌՎՑՓ"
	newline
	"Bengali - তঃঊঋঐকতোতৢ"
	newline
	"Chinese - ㌇㌌㌚㌫㍀㍌㍖"
	newline
	"Czech - ěščřžýáíéňď"
	newline
	"Greek - αβγδεζ"
	newline
	"German - äßÖöü"
	newline
	"Hebrew - סאבגדהוט"
	newline
	"Hiragana - ばぬぢぽみゆあ"
	newline
	"Katakana - ゼヂネポヸダジ"
	newline
	"Panjabi - ੨ਫ਼ਓਔੴ"
	newline
	"Russian - ДφψЗлйжҒ"
	newline
	"Thai - ฑญฆญจบฟ"
	newline
	"Tibetan - གྷཆ༰༯༲༬༣༇༈༊ང྆ཀྵ"
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
