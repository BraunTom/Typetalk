*typetalk
dataTypeGiven: aTypeCue

	| receiverClass sapt |
	receiverClass := (TypeChecker on: aTypeCue getClass)
		lookup: (receiver dataTypeGiven: aTypeCue )
		else: [^ #any].
	(receiverClass = aTypeCue getClass and: [aTypeCue method = selector key])
		ifTrue: [^ aTypeCue methodType]. "return type we already got"
	(receiverClass canUnderstand: selector key)
		ifFalse: [^ #any].
	sapt := Parser new 
		justPattern: (receiverClass ultimateSourceCodeAt: selector key ifAbsent: [#any])
		in: receiverClass.
	^ sapt at: 4