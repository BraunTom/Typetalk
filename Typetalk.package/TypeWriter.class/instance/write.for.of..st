write
write: aCollection for: aSymbol of: aClass

	| code |
	code := self 
		format: ((self declarationsClass canUnderstand: aClass name)
			ifTrue: [| methods declarations |
				declarations := self declarationsClass new.
				methods := declarations perform: aClass name.
				methods at: aSymbol put: aCollection.
				methods associations]
			ifFalse: [{aSymbol => aCollection}])
		for: aClass.
	self declarationsClass compile: code classified: aClass category