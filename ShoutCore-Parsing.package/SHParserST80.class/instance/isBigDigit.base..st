character testing
isBigDigit: aCharacter base: anInteger
    "Answer true if aCharacter is a digit or a capital
    letter appropriate for base anInteger"
	| digitValue |
	
	digitValue := aCharacter digitValue.
	^digitValue >= 0 and:[digitValue < anInteger]