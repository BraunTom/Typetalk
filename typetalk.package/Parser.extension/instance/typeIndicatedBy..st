*typetalk
typeIndicatedBy: anIndicator => Symbol ==> Symbol

	^ (self matchToken: anIndicator)
		ifTrue: [ | symbol |
			symbol := self advance asSymbol. 
			symbol = #self
				ifTrue: [cue getClass name] 
				ifFalse: [symbol]]
		ifFalse: [#any]