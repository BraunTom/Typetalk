*typetalk
dataTypeGiven: aTypeCue

	| receiverClass methodNode |
	receiverClass := (TypeChecker on: aTypeCue getClass)
		lookup: (receiver dataTypeGiven: aTypeCue )
		else: [^ #any].
	(receiverClass = aTypeCue getClass and: [aTypeCue method = selector key])
		ifTrue: [^ aTypeCue methodType]. "return type we already got"
	(receiverClass canUnderstand: selector key)
		ifFalse: [^ #any].
	methodNode := Parser new 
		parse: (receiverClass ultimateSourceCodeAt: selector key ifAbsent: [#any])
		class: receiverClass.
	^ methodNode dataType