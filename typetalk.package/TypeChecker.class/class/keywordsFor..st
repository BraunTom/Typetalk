as yet unclassified
keywordsFor: aClass

	^ Dictionary newFrom: {
		#any -> ProtoObject.
		#block -> BlockClosure.
		#self -> aClass
	}