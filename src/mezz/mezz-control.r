REBOL [
	Title: "REBOL 3 Mezzanine: Control"
	Rights: "Copyright REBOL Technologies 2010"
	File: %mezz-control.r
]

launch: func [
	{Runs a script as a separate process; return immediately.}
	script [file! string! none!] "The name of the script"
	/args arg [string! block! none!] "Arguments to the script"
	/wait "Wait for the process to terminate"
	/local exe
][
	if file? script [script: to-local-file clean-path script]
	exe: to-local-file system/options/boot

	; Quote everything, just in case it has spaces:
	args: to-string reduce [{"} exe {" "} script {" }]
	if arg [append args arg]
	either wait [call/wait args] [call args]
]
