token testing
isAssignment

	self isAnsiAssignment ifTrue: [ ^true ].
	^allowUnderscoreAssignments and: [ currentToken = '_' ]