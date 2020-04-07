parse support
initializeInstanceVariables

	instanceVariables := classOrMetaClass 
		ifNil: [ #() ]
		ifNotNil: [ classOrMetaClass allInstVarNames asArray ]