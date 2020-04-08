token testing
isBinary

	currentToken ifNil: [ ^false ].
	self isName ifTrue: [ ^false ].
	self isKeyword ifTrue: [ ^false ].
	1 to: currentToken size do: [ :i |
		(self isSelectorCharacter: (currentToken at: i)) ifFalse: [ ^false ] ].
	^true