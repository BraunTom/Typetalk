parse
parseUnary
	| unary type |
	
    [self isName]
        whileTrue: [
			unary := currentToken.
			type := #unary.
			(unary isEmpty or:[(Symbol lookup: unary) notNil])
				ifFalse:[
					type := (Symbol thatStartsCaseSensitive: unary skipping: nil)
						ifNil: [#undefinedUnary]
						ifNotNil:[#incompleteUnary]].
			self scanPast: type]
