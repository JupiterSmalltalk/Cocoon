tests-dictionary
testMagritteDictionaryReadingAndInterpretingDictionary
	| mock dictionary mag |
	mock := CCMockConfiguration new baseDirectory: FileSystem memory root; yourself.
	mock baseDirectory / 'test.txt' writeStreamDo: [ :st | st nextPutAll: 'bar' ].
	mock baseDirectory / 'test2.txt' writeStreamDo: [ :st | st nextPutAll: 'foo' ].
	dictionary := Dictionary with: 'mockPropertyFileList' -> (Array with: 'test.txt' with: 'test2.txt').
	mag := CCMagritteDictionaryReader writeDictionary: dictionary toConfiguration: mock.
	self assert: mag mockPropertyFileList first contents equals: 'bar'.
	self assert: mag mockPropertyFileList second contents equals: 'foo'