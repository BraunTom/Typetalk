accessing
printOn: stream

	super printOn: stream.
	stream
		nextPut: $(;
		print: type;
		nextPutAll: ', ';
		print: start;
		nextPutAll: ', ';
		print: end;
		nextPut: $)