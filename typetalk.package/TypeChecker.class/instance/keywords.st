accessing
keywords

	^ Dictionary newFrom: {
		#any -> ProtoObject.
		#block -> BlockClosure.
		#self -> self currentClass
	}