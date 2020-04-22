write
write: aCollection for: aSymbol of: aClass

	| code methodName |
	methodName := self methodNameFrom: aClass name.
	code := self 
		format: ((self declarationsClass canUnderstand: methodName)
			ifTrue: [| methods declarations |
				declarations := self declarationsClass new.
				methods := declarations perform: methodName.
				methods at: aSymbol put: aCollection.
				methods associations]
			ifFalse: [{aSymbol => aCollection}])
		for: aClass.
	self declarationsClass compile: code classified: aClass category