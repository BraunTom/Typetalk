as yet unclassified
write: aCollection for: aSymbol of: aClass

	| code methodName |
	methodName := self methodNameFrom: aClass name.
	code := self 
		format: ((self canUnderstand: methodName)
			ifTrue: [| methods declarations |
				declarations := self new.
				methods := declarations perform: methodName.
				methods at: aSymbol put: aCollection.
				methods associations]
			ifFalse: [{aSymbol => aCollection}])
		for: aClass.
	Typetalk disable.
	self compile: code classified: aClass category.
	Typetalk enable