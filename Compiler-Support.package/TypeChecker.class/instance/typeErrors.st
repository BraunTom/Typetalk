accessing
typeErrors
	
	^ typeErrors ifNil: [typeErrors := OrderedCollection new]
