*typetalk
dataTypeFor: aClass

	| receiverClass methodNode |
	^ #any
	"receiverClass := (TypeChecker on: aClass)
		lookup: receiver dataType  
		else: [^ #any].
	(receiverClass canUnderstand: selector key)
		ifFalse: [^ #any].
	methodNode := Parser new 
		parse: (receiverClass ultimateSourceCodeAt: selector key ifAbsent: [#any])
		class: receiverClass.
	^ methodNode dataType"