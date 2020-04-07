checking
does: type match: requiredType

	| given required |
	requiredType = #any
		ifTrue: [^ self].
	type = requiredType
		ifTrue: [^ self].
	given := self lookup: type else: [^ self]. 
	required := self lookup: requiredType else: [^ self].
	(required subclasses includes: given)
		ifFalse: [self addError: 'Expected value of type: ' , required , ' but got: ' , given]