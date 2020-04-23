accessing
cue

	^ TypeCue new
		setClass: self currentClass;
		method: self currentMethodPattern;
		methodType: self methodType;
		tempStack: self tempStack;
		yourself