as yet unclassified
lookup: aSymbol else: aBlock

	self keywords 
		at: aSymbol
		ifPresent: [:value | ^ value].
	^ Smalltalk 
		at: aSymbol 
		ifAbsent: [aBlock value].