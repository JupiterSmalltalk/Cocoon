tests-dictionary
testMagritteDictionaryReadingAndInterpretingFile
	| mock dictionary mag |
	mock := CCMockConfiguration new baseDirectory: FileSystem memory root; yourself.
	mock baseDirectory / 'test.txt' writeStreamDo: [ :st | st nextPutAll: 'test' ].
	dictionary := Dictionary with: 'mockPropertyFile' -> 'test.txt'.
	mag := CCMagritteDictionaryReader writeDictionary: dictionary toConfiguration: mock.
	self assert: mag mockPropertyFile contents equals: 'test'