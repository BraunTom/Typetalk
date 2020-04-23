visiting
visitReturnNode: node

	super visitReturnNode: node.
	self addReturnType: (self typeof: node).
	self 
		does: (self typeof: node) 
		match: self methodType
		at: node