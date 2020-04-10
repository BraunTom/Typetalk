*typetalk
typeIndicatedBy: anIndicator => Symbol ==> Symbol

	^ (self matchToken: anIndicator)
		ifTrue: [ | symbol |
			symbol := self advance asSymbol. 
			 symbol = #self
				ifTrue: [Type for: cue getClass] 
				ifFalse: [Type unresolved: symbol]]
		ifFalse: [Type any] 