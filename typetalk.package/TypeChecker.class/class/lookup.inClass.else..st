as yet unclassified
lookup: aSymbol inClass: aClass else: aBlock

	(self keywordsFor: aClass)
		at: aSymbol
		ifPresent: [:value | ^ value].
	^ Smalltalk 
		at: aSymbol 
		ifAbsent: [aBlock value].