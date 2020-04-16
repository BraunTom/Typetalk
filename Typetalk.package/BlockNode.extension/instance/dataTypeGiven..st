*typetalk
dataTypeGiven: aTypeCue

	^ Type for: BlockClosure
	
	"self returns
		ifTrue: [Type any]
		ifFalse: [self statements size = 0
					ifTrue: [Type for: UndefinedObject]
					ifFalse: [self statements last dataTypeGiven: aTypeCue]]"