visiting
visitMessageNode: node

	(self canResolveTypeOf: node receiver)
		ifTrue: [	 | receiverClass |
				receiverClass := ((self typeof: node receiver) resolveWith: self) value.
				self 
					doesMethod: node selector key
					existIn: receiverClass
					at: node.
				self 
					doesArgs: node arguments
					match: node selector key 
					in: receiverClass
					at: node].
	super visitMessageNode: node