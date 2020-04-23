accessing
at: anObject ifAbsent: aBlock

	| frame |
	frame := self 
		frameContaining: anObject 
		ifAbsent: [^ aBlock value].
	^ frame at: anObject
	