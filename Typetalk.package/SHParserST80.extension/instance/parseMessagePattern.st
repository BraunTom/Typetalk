*typetalk
parseMessagePattern   

	self currentTokenType 
		caseOf: {
			[ #name ] -> [ self parseUnaryMessagePattern ].
			[ #binary ] -> [ self parseBinaryMessagePattern ].
			[ #keyword ] -> [ self parseKeywordMessagePattern ] }
		otherwise: [ self fail ].
	self parseMethodType