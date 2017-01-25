tests-configuration
testMagritteConfigurationReadingAndInterpretingDictionary
	| configuration mag |
	configuration := CCMockConfiguration new
		baseDirectory: FileSystem memory root;
		yourself.
	configuration baseDirectory / 'test.txt' writeStreamDo: [ :st | st nextPutAll: 'foo' ].
	configuration baseDirectory / 'test2.txt' writeStreamDo: [ :st | st nextPutAll: 'bar' ].
	configuration
		mockPropertyFileList:
				(Array with: configuration baseDirectory / 'test.txt' with: configuration baseDirectory / 'test2.txt');
		yourself.
	mag := CCMagritteConfigurationReader writeConfiguration: configuration toDictionary: Dictionary new.
	self assert: mag class equals: Dictionary.
	self assert: (mag at: 'mockPropertyFileList') equals: (Array with: 'test.txt' with: 'test2.txt')