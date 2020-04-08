visiting
visitReturnNode: aReturnNode

	super visitReturnNode: aReturnNode.
	self does: aReturnNode dataType match: self methodType