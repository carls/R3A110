REBOL [
	Title: "REBOL 3 Mezzanine: Function Helpers"
	Rights: "Copyright REBOL Technologies 2010"
	File: %mezz-types.r
]

closure: func [
	{Defines a closure function.}
	spec [block!] {Help string (opt) followed by arg words (and opt type and string)}
	body [block!] {The body block of the function}
][
	make closure! copy/deep reduce [spec body]
]

function: func [
	{Defines a user function with local words.}
	spec [block!] {Optional help info followed by arg words (and optional type and string)}
	vars [block!] {List of words that are local to the function}
	body [block!] {The body block of the function}
][
	make function! copy/deep reduce [compose [(spec) /local (vars)] body]
]

has: func [
	{A shortcut to define a function that has local variables but no arguments.}
	vars [block!] {List of words that are local to the function}
	body [block!] {The body block of the function}
][
	make function! reduce [head insert copy/deep vars /local copy/deep body]
]

context: func [
	{Defines a unique object.}
	blk [block!] {Object words and values.}
][
	make object! blk
]

map: func [
	{Make a map value (hashed associative block).}
	val
][
	make map! :val
]

task: func [
	{Creates a task.}
	spec [block!] {Name or spec block}
	body [block!] {The body block of the task}
][
	make task! copy/deep reduce [spec body]
]
