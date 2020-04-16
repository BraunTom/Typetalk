*typetalk
parseTypeIndicatedBy: anIndicator

	currentToken = anIndicator
		ifTrue: [
			self scanPast: #indicator.
			self failUnless: self isName.
			self scanPast: #methodType]