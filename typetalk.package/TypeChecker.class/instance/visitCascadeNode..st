visiting
visitCascadeNode: node

	self 
		withReceiver: node receiver  
		do: [super visitCascadeNode: node]