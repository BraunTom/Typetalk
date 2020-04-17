*typetalk
parseBlockArguments

	currentTokenFirst == $: ifFalse: [ ^self ].
	[ currentTokenFirst == $: ] whileTrue: [
		self
			scanPast: #blockArgColon;
			parseArgument: #blockPatternArg;
			parseType ].
	(self parseVerticalBarForTemporaries: #blockArgsBar) ifFalse: [
		self fail ": Missing block args bar" ]