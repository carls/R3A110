REBOL [
	Title: "REBOL 3 Boot Base: Debug Functions"
	Rights: "Copyright REBOL Technologies 2010"
	File: %base-debug.r
	Note: {
		This code is evaluated just after actions, natives, sysobj, and other lower
		levels definitions. This file intializes a minimal working environment
		that is used for the rest of the boot.
	}
]

probe: func [
	{Debug print a molded value and returns that same value.}
	value [any-type!]
][
	print mold :value
	:value
]

??: func [
	{Debug print a word, path, or block of such, followed by its molded value.}
	'name "Word, path, and block to obtain values."
	/local out
][
	case [
		any [
			word? :name
			path? :name
		][
			print ajoin [name ": " mold name: get :name]
		]
		block? :name [
			out: make string! 50
			foreach word name [
				either any [
					word? :word
					path? :word
				][
					repend out [word ": " mold get word "  "]
				][
					repend out [mold word " "]
				]
			]
			print out
		]
		true [probe :name]
	]
	:name
]

boot-print: func [
	"Prints during boot when not quiet."
	data
][
	unless system/options/quiet [print :data]
]

loud-print: func [
	"Prints during boot when verbose."
	data
][
	if system/options/flags/verbose [print :data]
]
