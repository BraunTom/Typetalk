*typetalk
isInstOrClassVariableOrGlobalIn: aClass

	| selector |
	selector := self key key.
	^ (aClass bindingOf: selector) notNil 
		and: [| binding |
			binding := (aClass environment bindingOf: selector).
			(binding isKindOf: Global) or: [binding isNil]] 