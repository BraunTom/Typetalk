*typetalk
parseTypeIndicatedBy: anIndicator => Symbol

	currentToken = anIndicator
		ifTrue: [
			self scanPast: #indicator.
			self scanPast: #methodType]