identifier testing
resolvePragmaArgument: aString 
	(#('true' 'false' 'nil') includes: aString) ifTrue: [^aString asSymbol].
	"should really check that global is a class?"
	(Symbol lookup: aString) ifNotNil: [:sym | 
		classOrMetaClass 
			ifNotNil: [
				classOrMetaClass theNonMetaClass withAllSuperclassesDo: [:c | 
					(c environment bindingOf: sym) ifNotNil: [^#globalVar]]]
			ifNil: [(environment bindingOf: sym) ifNotNil: [^#globalVar]]].
	^self resolvePartialPragmaArgument: aString