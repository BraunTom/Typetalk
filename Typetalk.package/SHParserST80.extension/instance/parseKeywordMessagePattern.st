*typetalk
parseKeywordMessagePattern   

	[ self currentTokenType == #keyword ] whileTrue: [ 
		self 
			scanPast: #patternKeyword;
			parseArgument: #patternArg;
			parseType ]