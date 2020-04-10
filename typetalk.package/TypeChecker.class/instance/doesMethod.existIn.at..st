checking
doesMethod: aSymbol => Symbol existIn: aClass => Class at: aParseNode => ParseNode

	(aClass canUnderstand: aSymbol)
		ifFalse: [self 
					notify: aClass name , ' does not understand: ' , aSymbol
					at: aParseNode] 