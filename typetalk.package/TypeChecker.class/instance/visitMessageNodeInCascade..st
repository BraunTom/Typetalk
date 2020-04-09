visiting
visitMessageNodeInCascade: aMessageNode

	(self canResolveTypeOf: self cascadeReceiver)
		ifTrue: [	 | receiverClass |
				receiverClass := self lookup: (self typeof: self cascadeReceiver).
				self 
					doesMethod: aMessageNode selector key
					existIn: receiverClass
					at: aMessageNode.
				self 
					doesArgs: aMessageNode arguments
					match: aMessageNode selector key 
					in: receiverClass
					at: aMessageNode].
	super visitMessageNodeInCascade: aMessageNode.