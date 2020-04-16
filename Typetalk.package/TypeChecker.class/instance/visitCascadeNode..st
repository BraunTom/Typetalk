visiting
visitCascadeNode: node => CascadeNode 

	self 
		withReceiver: node receiver  
		do: [super visitCascadeNode: node]