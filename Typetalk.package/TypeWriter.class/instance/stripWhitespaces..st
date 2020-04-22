as yet unclassified
stripWhitespaces: aString

	| substrings camelCasedString rest |
	substrings := aString subStrings: ' '.
	rest := (substrings collect: [:each | each capitalized] from: 2 to: substrings size).
	camelCasedString := substrings first , (rest joinSeparatedBy: ''). 
	^ camelCasedString