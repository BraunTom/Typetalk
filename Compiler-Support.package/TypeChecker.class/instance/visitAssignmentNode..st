visiting
visitAssignmentNode: anAssignmentNode

	super visitAssignmentNode: anAssignmentNode.
	self does: anAssignmentNode dataType match: anAssignmentNode variable dataType.