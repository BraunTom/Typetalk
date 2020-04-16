accessing
keywords

	^ Dictionary newFrom: {
		#any -> Object.
		#block -> BlockClosure.
		#nil -> UndefinedObject. 
		#self -> self currentClass.
		#super -> self currentClass superclass
	}