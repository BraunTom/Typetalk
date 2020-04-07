token testing
isName
	"This method assumes that currentTokenFirst is a non-letter character when currentToken is nil."

	^(currentTokenFirst isLetter
		or: [ allowUnderscoreSelectors
			and: [ currentTokenFirst == $_ 
			and: [ currentToken notNil
			and: [ currentToken size > 1 ] ] ] ]) 
		and: [ currentToken last isAlphaNumeric
			or: [ allowUnderscoreSelectors
				and: [ currentToken last == $_ ] ] ] 