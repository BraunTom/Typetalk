type inferring
typeFromReturns

	self returnTypes size = 1
		ifTrue: [^ self returnTypes first].	"only one return so its type is the method-type"
		
	^ (self returnTypes notEmpty and: [self returnTypes reduce: [:a :b | a = b]])
		ifTrue: [self returnTypes first] "all Types are equal so we can return any of them" 
		ifFalse: [Type any]
		