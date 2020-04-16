*typetalk
checkForSpecialsIn: aClass

	self dataType: (name caseOf: {
		['nil'] -> [#UndefinedObject].
		['true'] -> [#True].
		['false'] -> [#False].
		['thisContext'] -> [#Context].
		['self'] -> [aClass name].
		['super'] -> [aClass superclass name]
	} otherwise: [^ self]).
	^ self copy