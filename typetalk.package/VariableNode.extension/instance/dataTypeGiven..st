*typetalk
dataTypeGiven: aTypeCue

	^ name caseOf: {
		['nil'] -> [#UndefinedObject].
		['true'] -> [#True].
		['false'] -> [#False].
		['thisContext'] -> [#Context].
		['self'] -> [aTypeCue getClass name].
		['super'] -> [aTypeCue getClass superclass name]
	} otherwise: [super dataTypeGiven: aTypeCue]