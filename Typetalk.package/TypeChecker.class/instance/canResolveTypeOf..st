resolve type
canResolveTypeOf: aParseNode

	^ (aParseNode dataTypeGiven: self cue) isAny not  