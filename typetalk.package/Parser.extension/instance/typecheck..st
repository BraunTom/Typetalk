*typetalk
typecheck: aMethodNode

	| checker |
	checker := (TypeChecker on: cue getClass)
		parser: self;
		encoder: encoder;
		yourself. 
	aMethodNode accept: checker.
	^ checker 