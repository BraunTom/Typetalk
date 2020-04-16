checking
does: type match: requiredType at: aParseNode
				
	self 
		does: type 
		match: requiredType 
		else: [ :given :required |
			self 
				notify: 'Expected value of type: ' , required , ' but got: ' , given 
				at: aParseNode]