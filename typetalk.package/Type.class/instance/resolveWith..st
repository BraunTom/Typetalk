as yet unclassified
resolveWith: aTypeChecker

	self isUnresolved 
		ifTrue: [
			self value: (aTypeChecker lookup: self value).
			self isUnresolved: false]
	