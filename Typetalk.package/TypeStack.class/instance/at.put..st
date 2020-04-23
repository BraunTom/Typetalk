accessing
at: anObject put: aType

	| frame |
	frame := self 
		frameContaining: anObject 
		ifAbsent: [].
	frame 
		ifNotNil: [:here | here removeKey: anObject].
	self collection last 
		at: anObject 
		put: aType
	