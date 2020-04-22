as yet unclassified
methodNameFrom: aStringOrSymbol

	| substrings camelCasedString rest |
	substrings := (aStringOrSymbol asString) subStrings: ' '.
	rest := (substrings collect: [:each | each capitalized] from: 2 to: substrings size).
	camelCasedString := substrings first , (rest joinSeparatedBy: ''). 
	^ camelCasedString