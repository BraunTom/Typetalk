parse
parseMethodTemporaries
	currentTokenFirst == $| 
		ifTrue: [
			self scanPast: #methodTempBar.
			[self isName] 
				whileTrue: [
					self scanPast: #patternTempVar.
					self parseType ].
			self failUnless: currentToken = '|'.
			self scanPast: #methodTempBar]