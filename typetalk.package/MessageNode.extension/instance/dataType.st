*typetalk
dataType

	| receiverClass methodNode |
	^ #any
	"receiverClass := TypeChecker 
		lookup: receiver dataType  
		else: [^ #any].
	(receiverClass canUnderstand: selector key)
		ifFalse: [^ #any].
	methodNode := Parser new 
		parse: (receiverClass ultimateSourceCodeAt: selector key ifAbsent: [#any])
		class: receiverClass.
	^ methodNode dataType"