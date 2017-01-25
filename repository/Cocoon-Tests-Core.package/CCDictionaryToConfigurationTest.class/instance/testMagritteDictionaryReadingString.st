tests-dictionary
testMagritteDictionaryReadingString
	| dictionary mag |
	dictionary := Dictionary with: 'mockProperty' -> 'mock'.
	mag := CCMagritteDictionaryReader
		writeDictionary: dictionary
		toConfiguration:
			(CCMockConfiguration new
				baseDirectory: FileSystem workingDirectory;
				yourself).
	self assert: mag class equals: CCMockConfiguration.
	self assert: mag mockProperty equals: 'mock'