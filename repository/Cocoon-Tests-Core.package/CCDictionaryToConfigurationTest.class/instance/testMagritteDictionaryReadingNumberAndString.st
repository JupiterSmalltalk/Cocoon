tests-dictionary
testMagritteDictionaryReadingNumberAndString
	| dictionary mag |
	dictionary := Dictionary with: 'mockPropertyBis' -> 7 with: 'mockProperty' -> 'mock'.
	mag := CCMagritteDictionaryReader writeDictionary: dictionary toConfiguration: CCMockConfiguration new.
	self assert: mag class equals: CCMockConfiguration.
	self assert: mag mockPropertyBis equals: 7.
	self assert: mag mockProperty equals: 'mock'