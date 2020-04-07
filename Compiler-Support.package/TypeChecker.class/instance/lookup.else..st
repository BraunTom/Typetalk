as yet unclassified
lookup: aSymbol else: aBlock

	^ Smalltalk 
		at: aSymbol 
		ifAbsent: [self addError: 'Type: ' , aSymbol , ' does not exist'. aBlock value].