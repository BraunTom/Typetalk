*typetalk
encodeLiteral: object type: aSymbol

	| node |
	node := self
		name: object
		key: object
		class: LiteralNode
		type: LdLitType
		set: litSet.
	node dataType: aSymbol.
	^ node