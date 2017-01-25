tests-configuration
testMagritteConfigurationReadingAndInterpretingFile
	| configuration mag |
	configuration := CCMockConfiguration new
		baseDirectory: FileSystem memory root;
		yourself.
	configuration baseDirectory / 'test.txt' writeStreamDo: [ :st | st nextPutAll: 'test' ].
	configuration
		mockPropertyFile: configuration baseDirectory / 'test.txt';
		yourself.
	mag := CCMagritteConfigurationReader writeConfiguration: configuration toDictionary: Dictionary new.
	self assert: mag class equals: Dictionary.
	self assert: (mag at: 'mockPropertyFile') equals: 'test.txt'