visiting
visitCascadeNode: aCascadeNode

	self 
		withReceiver: aCascadeNode receiver  
		do: [super visitCascadeNode: aCascadeNode]