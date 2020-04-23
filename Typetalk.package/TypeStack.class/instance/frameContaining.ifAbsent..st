accessing
frameContaining: anObject ifAbsent: aBlock

	| index |
	index := self collection size.
	[index > 0]
		whileTrue: [ | frame |
			frame := self collection at: index.
			frame
				at: anObject
				ifPresent: [:value | ^ frame].
			index := index - 1.
		].
	
	^ aBlock value
	