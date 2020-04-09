visiting
visitMethodNode: aMethodNode

	self methodType: (aMethodNode dataTypeFor: self currentClass).
	self currentMethodPattern: aMethodNode selectorOrFalse.
	super visitMethodNode: aMethodNode 