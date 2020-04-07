*typetalk
typecheck: aMethodNode

	| checker |
	checker := TypeChecker new.
	aMethodNode accept: checker.
	^ checker 