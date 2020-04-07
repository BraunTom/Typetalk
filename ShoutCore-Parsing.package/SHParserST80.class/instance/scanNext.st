scan
scanNext

	self scanWhitespace.
	currentTokenFirst := self currentChar ifNil: [
		" end of input "
		currentTokenFirst := $ .
		currentTokenSourcePosition := nil.
		currentToken := nil.
		^nil ].
	currentTokenFirst isDigit ifTrue: [ ^self scanNumber ].
	(currentTokenFirst isLetter or: [
		allowUnderscoreSelectors and: [ currentTokenFirst == $_ ] ])
			ifTrue: [ ^self scanIdentifier ].
	^self scanBinary