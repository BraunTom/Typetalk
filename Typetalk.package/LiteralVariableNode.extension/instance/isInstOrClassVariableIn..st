*typetalk
isInstOrClassVariableIn: aClass

	| selector |
	selector := self key key.
	^ (aClass bindingOf: selector) notNil and: [(aClass environment bindingOf: selector) isNil] 