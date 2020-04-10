*typetalk
dataTypeGiven: aTypeCue

	^ name caseOf: {
		['nil'] -> [Type for: UndefinedObject].
		['true'] -> [Type for: True].
		['false'] -> [Type for: False].
		['thisContext'] -> [Type for: Context].
		['self'] -> [Type for: aTypeCue getClass].
		['super'] -> [Type for: aTypeCue getClass superclass]
	} otherwise: [super dataTypeGiven: aTypeCue]