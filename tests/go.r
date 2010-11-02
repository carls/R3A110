REBOL [
	Title: "Host-Kit Graphics: Basic GOB Compositing Test"
	Version: 1.0.1
	Author: "Carl Sassenrath"
	Notes: {
		A101: PAIRs are now floating point, and commands like CIRCLE
			can pass a pair for second argument.
	}
]

win: view/no-wait main: make gob! [color: black offset: 0x0 size: 500x500]

to-draw: func [block] [bind reduce block import 'draw]

units: 32
pause: .01

points: []
loop 100 [
	clear main
	clear points
	repeat n units [append points random main/size]
	append main make gob! reduce/no-set [
		offset: 0x0
		size: main/size
		draw: to-draw ['pen random 255.255.255 'line points]
	]
	show main
	wait pause
]

loop 100 [
	clear main
	repeat n units [
		sz: random 100x100
		append main make gob! reduce/no-set [
			draw:   to-draw [
				'pen random 255.255.255 
				'fill-pen random 255.255.255.255
				'circle sz sz * 98%
			]
			offset: random 300x300
			size:   sz * 2
		]
	]
	show main
	wait pause
]

loop 100 [
	clear main
	repeat n units [
		sz: random 100x100
		append main make gob! reduce/no-set [
			draw:   to-draw [
				'pen random 255.255.255 
				'fill-pen random 255.255.255.255
				'box 2x2 sz 0
			]
			offset: random 400x400
			size:   sz + 4x4
		]
	]
	show main
	wait pause
]

loop 100 [
	clear main
	repeat n units * 10 [
		append main make gob! reduce/no-set [
			color:  random 255.255.255.255
			offset: random 500x500
			size:   random 80x80
		]
	]
	show main
	wait pause
]

unview win
