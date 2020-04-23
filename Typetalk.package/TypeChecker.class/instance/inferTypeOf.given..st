type inferring
inferTypeOf: aParseNode given: aTypeCue
	"Returns declared type or infers type if possible"
	^ aParseNode inferTypeGiven: aTypeCue