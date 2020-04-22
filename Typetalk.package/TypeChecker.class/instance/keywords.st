accessing
keywords

	^ Dictionary newFrom: {
		#any -> Object.
		#block -> BlockClosure.
		#nil -> UndefinedObject.  
		#self -> self currentClass.
		#super -> self currentClass superclass.
		#instance -> (self currentClass isMeta
						ifTrue: [self currentClass theNonMetaClass]
						ifFalse: [self currentClass])
	}