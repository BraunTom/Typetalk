parse
parseBinary 
	| binary type |
	self parseUnary.
	[self isBinary] 
		whileTrue: [
			binary := currentToken.
			type := #binary.
			(binary isEmpty or:[(Symbol lookup: binary) notNil])
				ifFalse:[
					type := (Symbol thatStartsCaseSensitive: binary skipping: nil)
						ifNil: [#undefinedBinary]
						ifNotNil:[#incompleteBinary]].	
			self scanPast: type. 	
			self parseTerm.
            	self parseUnary]
