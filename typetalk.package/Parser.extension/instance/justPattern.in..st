*typetalk
justPattern: aString in: aClass

	| c myStream |
	c := CompilationCue
			source: aString
			class: aClass
			requestor: nil.
	myStream := c sourceStream.
	self encoder init: c notifying: self.
	self init: myStream cue: c failBlock: [^ nil].
	^ (self pattern: false inContext: c context)