scan
scanWhitespace
	
	(self currentChar ifNil: [ ^self ]) isSeparator ifTrue: [
		sourcePosition := source
			indexOfAnyOf: CharacterSet nonSeparators
			startingAt: sourcePosition + 1.
		sourcePosition = 0 ifTrue: [ "Not found"
			sourcePosition := source size + 1 ] ].
	self currentChar == $" ifTrue: [ self scanComment ]