parse
parseLiteralArrayElement

	currentTokenFirst isLetter ifTrue: [
		#true = currentToken ifTrue: [ ^self scanPast: #true ].
		#false = currentToken ifTrue: [ ^self scanPast: #false ].
		#nil = currentToken ifTrue: [ ^self scanPast: #nil ].
		^self scanPast: #symbol ].
	currentTokenFirst == $( ifTrue: [
		self scanPast: #arrayStart.
		^self parseArray ].
	^self parseLiteral: true