*typetalk
dataTypeGiven: aTypeCue
"Transcript show: self key value class name asSymbol; cr."
	^ ((self isInstOrClassVariableOrGlobalIn: aTypeCue getClass) or: [self key value isNil]) 
		ifTrue: [Type any] 
		ifFalse: [Type for: self key value class]