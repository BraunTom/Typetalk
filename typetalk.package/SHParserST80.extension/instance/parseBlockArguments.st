*typetalk
parseBlockArguments
	[currentTokenFirst == $:] 
		whileTrue: [
			self scanPast: #blockArgColon.
			self failUnless: self isName.
			self scanPast: #blockPatternArg.
			self parseType].
	currentTokenFirst == $| 
		ifTrue: [^self scanPast: #blockArgsBar]