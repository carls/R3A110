REBOL [
	Title: "REBOL Graphics - TEXT commands"
	Name: text
	Type: extension
	Exports: none
	; Run make-host-ext.r to convert
]

;don't change order of already defined words unless you know what you are doing

words: [
	aliased
	antialiased
	vectorial
	
	;font object words
	name
	style
	size
	color
	offset
	space
	shadow
	
	;para object words
	origin
	margin
	indent
	tabs
	wrap?
	scroll
	align
	valign
	
	;para/align values
	center
	right
	left
	
	;para/valign values
	middle
	top
	bottom
	
	;font/style values
	bold
	italic
	underline

	;caret object words
	caret
	highlight-start
	highlight-end
]

;temp hack - will be removed later
init-words: command [
	words [block!]
]

init-words words

;please alphabetize the order of commands so it easier to lookup things

anti-alias: command [
	"Sets aliasing mode."
	state [logic!]
]

b: bold: command [
	"Sets font BOLD style."
	state [logic!]
]

caret: command [
	"Sets paragraph attributes."
	caret-attributes [object!]
]

center: command [
	"Sets text alignment."
]

color: command [
	"Sets font color."
	font-color [tuple!]
]

drop: command [
	"Removes N previous style setting from the stack."
	count [integer!]
]

font: command [
	"Sets font attributes."
	font-attributes [object!]
]

i: italic: command [
	"Sets font ITALIC style."
	state [logic!]
]

left: command [
	"Sets text alignment."
]

nl: newline: command [
	"Breaks the text line."
]

para: command [
	"Sets paragraph attributes."
	para-attributes [object!]
]

right: command [
	"Sets text alignment."
]

scroll: command [
	"Sets text position."
	offset [pair!]
]

shadow: command [
	"Enables shadow effect for text."
	offset [pair!]
	color [tuple!]
	spread [integer!]
]

size: command [
	"Sets font size."
	font-size [integer!]
]

text: command [
	"Renders text string."
	text [string!]
]

u: underline: command [
	"Sets font UNDERLINE style."
	state [logic!]
]

