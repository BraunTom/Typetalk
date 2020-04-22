as yet unclassified
withReceiver: anObject do: aBlock

	self pushCascadeReceiver: anObject.
	aBlock value.
	self popCascadeReceiver