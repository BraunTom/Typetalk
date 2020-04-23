visiting
visitMessageNodeInCascade: node

	(self canResolveTypeOf: self cascadeReceiver)
		ifTrue: [	 | receiverClass |
				receiverClass := ((self inferTypeOf: self cascadeReceiver) resolveWith: self) value.
				self 
					doesMethod: node selector key
					existIn: receiverClass
					at: node.
				self 
					doesArgs: node arguments
					match: node selector key 
					in: receiverClass
					at: node].
	super visitMessageNodeInCascade: node