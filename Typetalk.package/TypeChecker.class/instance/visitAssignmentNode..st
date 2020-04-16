visiting
visitAssignmentNode: node => AssignmentNode

	super visitAssignmentNode: node.
	self 
		does: (self typeof: node) 
		match: (self typeof: node variable)
		at: node