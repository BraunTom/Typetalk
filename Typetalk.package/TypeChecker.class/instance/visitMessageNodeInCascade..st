visiting
visitMessageNodeInCascade: node => MessageNode

	(self canResolveTypeOf: self cascadeReceiver)
		ifTrue: [	 | receiverClass |
				receiverClass := ((self typeof: self cascadeReceiver) resolveWith: self) value.
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