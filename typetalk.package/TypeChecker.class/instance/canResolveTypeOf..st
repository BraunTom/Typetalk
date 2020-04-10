resolve type
canResolveTypeOf: aParseNode => ParseNode ==> Boolean

	^ (aParseNode dataTypeGiven: self cue) isAny not 