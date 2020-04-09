visiting
visitReturnNode: aReturnNode

	super visitReturnNode: aReturnNode.
	self 
		does: (self typeof: aReturnNode) 
		match: self methodType
		at: aReturnNode