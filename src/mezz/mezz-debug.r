REBOL [
	Title: "REBOL 3 Mezzanine: Debug"
	Rights: "Copyright REBOL Technologies 2010"
	File: %mezz-debug.r
]

dt: delta-time: funct [
	{Delta-time - return the time it takes to evaluate a block.}
	block [block!]
][
	start: stats/timer
	do block
	stats/timer - start
]

dp: delta-profile: func [
	{Delta-profile of running a specific block.}
	block [block!]
	/local start end
][
	start: values-of stats/profile
	do block
	end: values-of stats/profile
	foreach num start [
		change end end/1 - num
		end: next end
	]
	start: make system/standard/stats []
	set start head end
	start
]

speed?: func [
	"Ballpark speed benchmark."
	/local n
][
	recycle
	n: dt [loop 1'000'000 [tail? next "x"]]
	to integer! 1.44 / n/second * 600
]
