printing
printOn: aStream
	<ignoreForCoverage>
	super printOn: aStream.
	aStream
		nextPut: $[;
		nextPutAll: self configurationName;
		nextPut: $-;
		print: self identityHash;
		nextPut: $]