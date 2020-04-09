*typetalk
typecheck: aMethodNode ==> TypeChecker

	| checker => TypeChecker |
	checker := (TypeChecker on: cue getClass)
		parser: self;
		encoder: encoder;
		yourself. 
	aMethodNode accept: checker.
	^ checker