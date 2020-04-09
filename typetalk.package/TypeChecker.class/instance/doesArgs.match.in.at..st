checking
doesArgs: aCollection match: aSymbol in: aClass at: aParseNode

	| sapt requiredArgs cue |
	"{selector args priority type}"
	sapt := Parser new
		justPattern: (aClass ultimateSourceCodeAt: aSymbol ifAbsent: [#any]) 
		in: aClass.
	requiredArgs := sapt at: 2.
	cue := TypeCue new
				setClass: aClass;
				method: aSymbol;
				methodType: (sapt at: 4); 
				yourself.
	requiredArgs withIndexDo: [:each :index |
		self 
			does: (self typeof: (aCollection at: index)) 
			match: (self typeof: each usingCue: cue)
			else: [:given :required |
			self 
				notify: 'For argument ' , index asString , ': Expected value of type: ' , required , ' but got: ' , given 
				at: aParseNode]]