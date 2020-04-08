checking
does: type match: requiredType

	| given required |
	type = requiredType
		ifTrue: [^ self].
	given := self lookup: type else: [^ self]. 
	required := self lookup: requiredType else: [^ self].
	(required includesBehavior: given) 
		ifFalse: [self addError: 'Expected value of type: ' , required , ' but got: ' , given]