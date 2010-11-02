REBOL [
	Title: "REBOL 3 Boot Base: Series Functions"
	Rights: "Copyright REBOL Technologies 2010"
	File: %base-series.r
	Note: {
		This code is evaluated just after actions, natives, sysobj, and other lower
		levels definitions. This file intializes a minimal working environment
		that is used for the rest of the boot.
	}
]

repend: func [
	"Appends a reduced value to a series and returns the series head."
	series [series! port! map! gob! object! bitset!] {Series at point to insert}
	value {The value to insert}
	/part {Limits to a given length or position}
	length [number! series! pair!]
	/only {Inserts a series as a series}
	/dup {Duplicates the insert a specified number of times}
	count [number! pair!]
][
	apply :append [series reduce :value part length only dup count]
]

join: func [
	"Concatenates values."
	value "Base value"
	rest "Value or block of values"
][
	value: either series? :value [copy value] [form :value]
	repend value :rest
]

reform: func [
	"Forms a reduced block and returns a string."
	value "Value to reduce and form"
	;/with "separator"
][
	form reduce :value
]
