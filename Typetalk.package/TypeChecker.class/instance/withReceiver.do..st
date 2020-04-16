as yet unclassified
withReceiver: anObject do: aBlock

	self cascadeReceiver: anObject.
	aBlock value.
	self cascadeReceiver: nil