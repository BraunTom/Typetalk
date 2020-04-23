resolve type
canResolveTypeOf: aParseNode

	^ (self inferTypeOf: aParseNode) isAny not  