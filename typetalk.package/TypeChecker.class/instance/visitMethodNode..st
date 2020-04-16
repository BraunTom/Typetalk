visiting
visitMethodNode: node => MethodNode

	self methodType: (self typeof: node).
	self currentMethodPattern: node selectorOrFalse.
	super visitMethodNode: node. 
	TypeDeclarations 
		write: {self methodType serialize} , {}
		for: self currentMethodPattern 
		of: self currentClass