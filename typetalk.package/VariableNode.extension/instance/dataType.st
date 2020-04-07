*typetalk
dataType 

	^ name caseOf: {
		['nil'] -> [#UndefinedObject].
		['true'] -> [#True].
		['false'] -> [#False]
	} otherwise: [super dataType]