temps
bindArg: name type: aSymbol
	"Declare an argument."
	| node |
	nTemps >= 15
		ifTrue: [^self notify: 'Too many arguments'].
	node := self bindTemp: name.
	node dataType: aSymbol.
	^ node nowHasDef nowHasRef