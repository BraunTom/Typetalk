*typetalk
pattern: fromDoit inContext: ctxt
	" unarySelector | binarySelector arg | keyword arg {keyword arg} =>
	{selector, arguments, precedence}."
	| args selector |
	doitFlag := fromDoit.
	fromDoit ifTrue:
		[^ctxt == nil
			ifTrue: [{#DoIt. {}. 1. Type any}]
			ifFalse: [{#DoItIn:. {encoder encodeVariable: encoder doItInContextName}. 3. Type any}]].

	hereType == #word ifTrue: [^ {self advance asSymbol. {}. 1. self methodType}].

	(hereType == #binary or: [hereType == #verticalBar]) ifTrue: 
		[selector := self advance asSymbol.
		args := Array with: (encoder bindArg: self argumentName type: self type).
		^ {selector. args. 2. self methodType}].

	hereType == #keyword ifTrue: 
		[selector := WriteStream on: (String new: 32).
		args := OrderedCollection new.
		[hereType == #keyword] whileTrue:[
			selector nextPutAll: self advance.
			args addLast: (encoder bindArg: self argumentName type: self type).
		].
		^ {selector contents asSymbol. args. 3. self methodType}].
	^self expected: 'Message pattern'