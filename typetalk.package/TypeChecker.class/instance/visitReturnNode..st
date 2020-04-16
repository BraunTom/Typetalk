visiting
visitReturnNode: node

	super visitReturnNode: node.
	self 
		does: (self typeof: node) 
		match: self methodType
		at: node