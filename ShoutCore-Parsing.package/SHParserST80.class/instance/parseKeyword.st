parse
parseKeyword 
    | keyword rangeIndices |
    self parseBinary.
	keyword := ''.
	rangeIndices := #().
	[
    		[self isKeyword]
        		whileTrue: [
				keyword := keyword, currentToken. 
				self rangeType: #keyword.
				"remember where this keyword token is in ranges"
				rangeIndices := rangeIndices copyWith: ranges size.
				self scanNext.
				self parseTerm.
				self parseBinary ]
	] ensure: [ | type |
		"do this in an ensure so that it happens even if the errorBlock evaluates before getting here"
		"patch up the keyword tokens, so that incomplete and undefined ones look different"
		(keyword isEmpty or:[(Symbol lookup: keyword) notNil])
			ifFalse:[
				type := (Symbol thatStartsCaseSensitive: keyword skipping: nil)
					ifNil: [#undefinedKeyword]
					ifNotNil:[#incompleteKeyword].
				rangeIndices do: [:i | (ranges at: i) type: type]]]