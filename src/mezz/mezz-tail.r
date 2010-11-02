REBOL [
	Title: "REBOL 3 Mezzanine: End of Mezz"
	Rights: "Copyright REBOL Technologies 2010"
	File: %mezz-tail.r
]

funco: :func ; save it for expert usage

; Final FUNC definition:
func: funco [
	{Defines a user function with given spec and body.}
	spec [block!] {Help string (opt) followed by arg words (and opt type and string)}
	body [block!] {The body block of the function}
][
	make function! copy/deep reduce [spec body] ; (now it deep copies)
]

; Quick test runner (temporary):
t: does [do %test.r]
