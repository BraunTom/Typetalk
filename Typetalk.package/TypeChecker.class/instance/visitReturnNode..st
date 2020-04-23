visiting
visitReturnNode: node

	super visitReturnNode: node.
	self addReturnType: (self inferTypeOf: node).
	self 
		does: (self inferTypeOf: node) 
		match: self methodType
		at: node