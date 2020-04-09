visiting
visitAssignmentNode: anAssignmentNode

	super visitAssignmentNode: anAssignmentNode.
	self 
		does: (self typeof: anAssignmentNode) 
		match: (self typeof: anAssignmentNode variable)
		at: anAssignmentNode