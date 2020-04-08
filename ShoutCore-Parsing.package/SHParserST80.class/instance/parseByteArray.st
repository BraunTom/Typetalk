parse
parseByteArray

	[currentTokenFirst == $]] whileFalse: [
		currentTokenFirst isDigit
			ifTrue: [
				"do not parse the number, can be time consuming"
				self scanPast: #number]
			ifFalse: [
				self failWhen: currentTokenFirst == $. .
				self error]].
	self scanPast: #byteArrayEnd