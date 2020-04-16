as yet unclassified
write: aCollection for: aSymbol of: aClass

	| code |
	code := self 
		format: ((self canUnderstand: aClass name)
			ifTrue: [| methods declarations |
				declarations := self new.
				methods := declarations perform: aClass name.
				methods at: aSymbol put: aCollection.
				methods associations]
			ifFalse: [{aSymbol => aCollection}])
		for: aClass.
	Typetalk disable.
	self compile: code classified: aClass category.
	Typetalk enable