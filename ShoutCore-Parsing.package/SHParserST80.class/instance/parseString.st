parse
parseString
	| first c last |
	first := sourcePosition.
	
	[(c := self currentChar)
		ifNil: [
			self rangeType: #unfinishedString start: first - 1 end: source size.
			self error	": 'unfinished string'"].
	c ~~ $' or: [
		self peekChar == $' 
			ifTrue: [
				sourcePosition := sourcePosition + 1.
				true]
			ifFalse: [false]]
	] whileTrue: [sourcePosition := sourcePosition + 1].
	last := sourcePosition.
	self nextChar.
	self scanPast: #string start: first - 1 end: last