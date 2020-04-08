identifier testing
resolve: aString

	aString = #self ifTrue: [ ^#self ].
	aString = #true ifTrue: [ ^#true ].
	aString = #false ifTrue: [ ^#false ].
	aString = #nil ifTrue: [ ^#nil ].
	aString = #super ifTrue: [ ^#super ].
	aString = #thisContext ifTrue: [ ^#thisContext ].
	(self isBlockTempName: aString) ifTrue: [^#blockTempVar].
	(self isBlockArgName: aString) ifTrue: [^#blockArg].
	(self isMethodTempName: aString) ifTrue: [^#tempVar].
	(self isMethodArgName: aString) ifTrue: [^#methodArg].
	(instanceVariables includes: aString) ifTrue: [^#instVar].
	workspace 
		ifNotNil: [(workspace hasBindingOf: aString) ifTrue: [^#workspaceVar]].
	(Symbol lookup: aString) ifNotNil: [:sym | 
		classOrMetaClass
			ifNotNil: [
				classOrMetaClass theNonMetaClass withAllSuperclassesDo: [:c | 
					(c classPool bindingOf: sym) ifNotNil: [^#classVar].
					c sharedPools do: [:p | (p bindingOf: sym) ifNotNil: [^#poolConstant]].
					(c environment bindingOf: sym) ifNotNil: [^#globalVar]]]
			ifNil: [(environment bindingOf: sym) ifNotNil: [^#globalVar]]].
	^self resolvePartial: aString