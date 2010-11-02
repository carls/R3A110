REBOL [Title: "Basic SHAPE test"]

do %gfx-pre.r

;;; WINDOW
win: make gob! [text: "Basic SHAPE test" offset: 200x20 size: 800x800]

;;; background GOB
gobb: make gob! []
gobb/size: win/size
gobb/color: white
append win gobb

gobd: make gob! []
gobd/size: gobb/size

line-test: [
	move 100x40 'hline 200
	'move -200x40 hline 300
	move 100x120 'vline 200
	'move 40x-200 vline 320
	'move 40x-200 line 300x120
	'move -120x40 'line 120x0
]

curve-test: [
	move 100x450 curve 100x550 300x550 300x450
	move 350x450 'curve 0x100 200x100 200x0
	move 100x550 'vline 100 curv 300x650 300x550
	'move 50x0 'vline 100 'curv 200x0 200x-100
	move 0x0
]

qcurve-test: [
	move 100x700 qcurve 200x800 300x700 
	'move 50x0 'qcurve 100x100 200x0
	move 350x50 'qcurve 100x100 200x0 qcurv 750x50
	move 350x110 'qcurve 100x100 200x0 'qcurv 200x0
	move 0x0
]

arc-test1: [
	move 350x400
	line 400x375
	arc 450x350 25x25 -30 sweep
	line 500x325 
	arc  550x300 25x50 -30 sweep
	line 600x275 
	arc  650x250 25x75 -30 sweep
	line 700x225 
	arc  750x200 25x100 -30 sweep
	line 800x175 

	move 50x450
	'line 50x-25 
	'arc 50x-25 25x25 -30 sweep
	'line 50x-25 
	'arc 50x-25 25x50 -30 sweep
	'line 50x-25 
	'arc 50x-25 25x75 -30 sweep
	'line 50x-25 
	'arc 50x-25 25x100 -30 sweep
	'line 50x-25
	move 0x0
]

arc-test2: [
	move 700x450 hline 650 arc 700x400 50x50 0 large close
	move 675x425 vline 375 arc 625x425 50x50 0 close
	move 700x650 'hline -50 'arc 50x-50 50x50 0 large  close
	move 675x625 'vline -50 'arc -50x50 50x50 0 
]

gobd/draw: to-draw [
	pen black
	shape line-test
	pen red
	fill-pen blue
	shape curve-test
	fill-pen green
	shape qcurve-test
	fill-pen off
	shape arc-test1
	fill-pen yellow
	shape arc-test2
] copy []

append gobb gobd
window: view/no-wait/as-is win
do-events
