visiting
visitMethodNode: node => MethodNode

	self methodType: (self typeof: node).
	self currentMethodPattern: node selectorOrFalse.
	super visitMethodNode: node 