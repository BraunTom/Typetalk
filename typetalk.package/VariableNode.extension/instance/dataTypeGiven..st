*typetalk
dataTypeGiven: aTypeCue

	^ name caseOf: {
		['nil'] -> [Type for: UndefinedObject].
		['true'] -> [Type for: True].
		['false'] -> [Type for: False].
		['thisContext'] -> [Type for: Context].
		['self'] -> [Type self].
		['super'] -> [Type super]
	} otherwise: [super dataTypeGiven: aTypeCue]