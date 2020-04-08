parse
parse
	"Parse the receiver's text as a Smalltalk method"

	self parse: (parseAMethod ifNil: [ classOrMetaClass notNil ]).
	errorBlock := nil