*typetalk
dataTypeGiven: aTypeCue receiver: anObject

	|  checker receiverClass receiverType sapt |
	receiverType := anObject dataTypeGiven: aTypeCue.
	receiverType isAny 
		ifTrue: [^ Type any].
		
	checker := TypeChecker on: aTypeCue getClass.
	receiverClass :=  (receiverType resolveWith: checker) value.
	(receiverClass = aTypeCue getClass and: [aTypeCue method = selector key])
		ifTrue: [^ aTypeCue methodType]. "return type we already got; recursion"
	(receiverClass canUnderstand: selector key)
		ifFalse: [^ Type any].
	sapt := Parser new 
		justPattern: (receiverClass ultimateSourceCodeAt: selector key ifAbsent: [Type any])
		in: receiverClass.
	^ sapt at: 4