error handling
notify: aString at: aParseNode

	self 
		notify: aString
		atPosition: (encoder sourceRangeFor: aParseNode) stop + 1