checking
doesArgs: aCollection match: aSymbol in: aClass at: aParseNode

	| sapte requiredArgs cue position |
	"{selector args priority type endPosition}"
	sapte := Parser new
		justPattern: (aClass ultimateSourceCodeAt: aSymbol ifAbsent: [#any]) 
		in: aClass.
	position := sapte at: 5.
	requiredArgs := sapte at: 2.
	cue := TypeCue new
				setClass: aClass;
				method: aSymbol;
				methodType: (sapte at: 4);
				yourself.
	requiredArgs withIndexDo: [:each :index |
		self 
			does: (self typeof: (aCollection at: index)) 
			match: (self typeof: each usingCue: cue)
			else: [:given :required |
			self 
				notify: 'For argument ' , index asString , ': Expected value of type: ' , required , ' but got: ' , given 
				at: aParseNode]]