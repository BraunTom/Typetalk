checking
doesMethod: aSymbol existIn: aClass at: aParseNode

	(aClass canUnderstand: aSymbol)
		ifFalse: [self 
					notify: aClass name , ' does not understand: ' , aSymbol
					at: aParseNode] 