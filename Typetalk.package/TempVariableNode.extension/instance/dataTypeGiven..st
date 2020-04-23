*typetalk
dataTypeGiven: aTypeCue
	| type |
	type := super dataTypeGiven: aTypeCue.
	self haltOnce.
	^ type isAny
		ifTrue: [aTypeCue tempTypes 
					at: self 
					ifAbsent: [Type any]]
		ifFalse: [type] 