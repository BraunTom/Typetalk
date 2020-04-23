*typetalk
encodeLiteral: object
	
	| node |
	node := self
		name: object
		key: object
		class: LiteralNode
		type: LdLitType
		set: litSet.
	node dataType: (self typeForLiteral: object class).
	^ node