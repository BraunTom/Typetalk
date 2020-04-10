checking
does: type match: requiredType else: aBlock

	type resolveWith: self.
	requiredType resolveWith: self.
	type 
		matches: requiredType
		ifFalse: [aBlock value: type value value: requiredType value] 