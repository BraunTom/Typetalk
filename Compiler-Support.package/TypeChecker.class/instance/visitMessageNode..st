visiting
visitMessageNode: aMessageNode

	aMessageNode receiver dataTypeKnown
		ifTrue: [].
	super visitMessageNode: aMessageNode.