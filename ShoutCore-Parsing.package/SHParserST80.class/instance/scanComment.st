scan
scanComment

	| start |
	start := sourcePosition.
	(sourcePosition := source indexOf: $" startingAt: start + 1) = 0 ifTrue: [
		sourcePosition := source size + 1.
		self rangeType: #unfinishedComment start: start end: source size.
		^self error ].
	start < sourcePosition ifTrue: [
		self rangeType: #comment start: start end: sourcePosition ].
	self 
		nextChar;
		scanWhitespace