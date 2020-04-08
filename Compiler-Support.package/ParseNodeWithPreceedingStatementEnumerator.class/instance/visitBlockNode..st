visiting
visitBlockNode: aBlockNode
	| savedPreceedingStatement |
	(theSelectBlock isNil or: [theSelectBlock value: aBlockNode]) ifFalse:
		[^nil].
	theBlock value: aBlockNode.
	savedPreceedingStatement := preceedingStatement.
	preceedingStatement := nil.
	[aBlockNode statements do:
		[:statement|
		 statement accept: self.
		 preceedingStatement := statement]] ensure:
		[preceedingStatement := savedPreceedingStatement]