visiting
visitBlockNode: aBlockNode

	self tempStack push.
	super visitBlockNode: aBlockNode.
	self tempStack pop