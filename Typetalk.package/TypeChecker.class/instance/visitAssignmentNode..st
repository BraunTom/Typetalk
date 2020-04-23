visiting
visitAssignmentNode: node

	| variable returnType |
	super visitAssignmentNode: node.
	variable := node variable.
	returnType := self inferTypeOf: node.
	self 
		does: returnType
		match: (self typeof: variable)
		at: node.
	node variable isTemp
		ifTrue: [ | type |
			type := self tempStack
						at: variable
						ifAbsent: [self tempStack at: variable put: returnType. ^ self].
			type ~= returnType
				ifTrue: [self tempStack at: variable put: Type any] 
			]