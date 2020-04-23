as yet unclassified
inferReturnType

	^ self methodType isAny
		ifTrue: [self typeFromReturns]
		ifFalse: [self methodType]