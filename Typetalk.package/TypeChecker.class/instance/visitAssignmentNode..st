visiting
visitAssignmentNode: node

	| variable returnType |
	super visitAssignmentNode: node.
	variable := node variable.
	returnType := self typeof: node.
	self 
		does: returnType
		match: (self typeof: variable)
		at: node.
	node variable isTemp
		ifTrue: [self tempTypes 
					at: variable
					put: returnType]