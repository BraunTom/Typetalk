*typetalk
typecheck: aMethodNode

	| checker |
	checker := TypeChecker on: cue class. 
	aMethodNode accept: checker.
	^ checker