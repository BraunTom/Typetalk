type inferring
inferTempTypeOf: aTempVariableNode

	| type |
	type := self typeof: aTempVariableNode.
	^ type isAny
		ifTrue: [self tempTypes at: aTempVariableNode ifAbsent: [Type any]]
		ifFalse: [type] 