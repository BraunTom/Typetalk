as yet unclassified
matches: aType ifFalse: aBlock

	(self isAny or: [aType isAny])
		ifTrue: [^ self].
	self = aType
		ifTrue: [^ self].
		
	(self value includesBehavior: aType value)
		ifFalse: [aBlock value]

	