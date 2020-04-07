parse
parse: isAMethod 
	"Parse the receiver's text. If isAMethod is true
    then treat text as a method, if false as an
    expression with no message pattern"

	self initializeInstanceVariables.
	allowUnderscoreAssignments := Scanner allowUnderscoreAsAssignment.
	allowUnderscoreSelectors := Scanner prefAllowUnderscoreSelectors.
	sourcePosition := 1.
	arguments := Dictionary new.
	temporaries := Dictionary new.
	blockDepth := bracketDepth := 0.
	ranges
		ifNil: [ ranges := OrderedCollection new: 40 "Covers over 80% of all methods." ]
		ifNotNil: [ ranges reset ].
	errorBlock := [^false].
	self scanNext.
	isAMethod ifTrue: [
		self
			parseMessagePattern;
			parsePragmaSequence ].
	self parseMethodTemporaries.
	isAMethod ifTrue: [ self parsePragmaSequence ].
	self parseStatementList.
	currentToken ifNotNil: [ self error ].
	^true