token testing
isKeyword
	"This method assumes that currentTokenFirst is a non-letter character when currentToken is nil."

	currentTokenFirst isLetter ifTrue: [
		^currentToken last == $: ].
	^allowUnderscoreSelectors
		and: [ currentTokenFirst == $_ 
		and: [ currentToken notNil
		and: [ currentToken size > 1
		and: [ currentToken last == $: ] ] ] ]