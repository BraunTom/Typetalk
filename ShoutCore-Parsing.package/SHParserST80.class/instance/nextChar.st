scan
nextChar
	
	^source at: (sourcePosition := sourcePosition + 1) ifAbsent: $ 