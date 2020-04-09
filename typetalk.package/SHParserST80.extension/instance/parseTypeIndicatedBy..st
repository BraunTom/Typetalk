*typetalk
parseTypeIndicatedBy: anIndicator => Symbol

	currentToken = anIndicator
		ifTrue: [
			self scanPast: #indicator.
			self failUnless: self isName.
			self scanPast: #methodType]