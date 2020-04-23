*typetalk
inferTypeGiven: aTypeCue
	
	| type |
	type := super inferTypeGiven: aTypeCue.
	self haltOnce.
	^ type isAny
		ifTrue: [aTypeCue tempTypes 
					at: self 
					ifAbsent: [Type any]]
		ifFalse: [type] 