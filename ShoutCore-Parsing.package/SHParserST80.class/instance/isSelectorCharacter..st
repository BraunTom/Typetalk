character testing
isSelectorCharacter: aCharacter

	| asciiValue |
	('"#$'':().;[]{}^_'  includes: aCharacter) ifTrue: [ ^false ].
	aCharacter isSeparator ifTrue:[ ^false ].
	aCharacter isAlphaNumeric ifTrue: [ ^false ].
	(asciiValue := aCharacter asciiValue) = 30 ifTrue: [ ^false "the doIt char" ].
	^asciiValue ~= 0 "Any other char, but 0 is ok as a binary selector char."
