visiting
visitMethodNode: node

	self methodType: (self typeof: node).
	self currentMethodPattern: node selector.
	super visitMethodNode: node. 
	TypeDeclarations 
		write: {self methodType serialized} , {}
		for: self currentMethodPattern 
		of: self currentClass