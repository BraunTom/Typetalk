identifier testing
resolvePartialPragmaArgument: aString 
	"check if any valid pragma argument begins with aString"
	
	(#('true' 'false' 'nil') anySatisfy: [:each | each beginsWith: aString]) 
		ifTrue: [^#incompleteIdentifier].
	"should really check that a matching binding is for a Class?"
	classOrMetaClass
		ifNotNil: [
			classOrMetaClass theNonMetaClass withAllSuperclassesDo: [:c | 
				(c environment hasBindingThatBeginsWith: aString) ifTrue: [^#incompleteIdentifier]]]
		ifNil: [(environment hasBindingThatBeginsWith: aString) ifTrue: [^#incompleteIdentifier]].
	^#undefinedIdentifier