parse
parseSymbol
	| c |
	currentToken = '#' 
		ifTrue: [
			"if token is just the #, then scan whitespace and comments
			and then process the next character.
			Squeak allows space between the # and the start of the symbol 
			e.g. # (),  #  a, #  'sym' "
			self rangeType: #symbol.
			self scanWhitespace].
	c := self currentChar.
	self failWhen: (c isNil or: [c isSeparator]).
	c == $( 
		ifTrue: [
			self nextChar.
			self scanPast: #arrayStart start: currentTokenSourcePosition end: currentTokenSourcePosition + 1.
			^self parseArray].
	c == $' ifTrue: [^self parseSymbolString].
	c == $[ ifTrue: [
			self nextChar.
			self scanPast: #byteArrayStart start: currentTokenSourcePosition end: currentTokenSourcePosition + 1.
			^self parseByteArray].
	((self isSelectorCharacter: c) or: [c == $-]) 
		ifTrue: [^self parseSymbolSelector].
	(c isLetter
		or: [ c == $: 
		or: [ allowUnderscoreSelectors and: [ c == $_ ] ] ]) 
			ifTrue: [^self parseSymbolIdentifier].
	^self parseCharSymbol