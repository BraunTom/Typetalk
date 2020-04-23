initialize-release
initialize

	self 
		cascadeReceivers: OrderedCollection new;
		returnTypes: OrderedCollection new;
		tempStack: TypeStack new 