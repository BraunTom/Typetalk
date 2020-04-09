checking
does: type match: requiredType else: aBlock

	| given required |
	type = #any
		ifTrue: [^ self].
	type = requiredType
		ifTrue: [^ self].
	given := self lookup: type else: [^ self]. 
	required := self lookup: requiredType else: [^ self].
	(given includesBehavior: required) 
		ifFalse: [aBlock value: given value: required]