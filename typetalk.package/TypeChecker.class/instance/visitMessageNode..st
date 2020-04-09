visiting
visitMessageNode: aMessageNode

	(self canResolveTypeOf: aMessageNode receiver)
		ifTrue: [	 | receiverClass |
				receiverClass := self lookup: (self typeof: aMessageNode receiver).
				self 
					doesMethod: aMessageNode selector key
					existIn: receiverClass
					at: aMessageNode.
				self 
					doesArgs: aMessageNode arguments
					match: aMessageNode selector key 
					in: receiverClass
					at: aMessageNode].
	super visitMessageNode: aMessageNode.