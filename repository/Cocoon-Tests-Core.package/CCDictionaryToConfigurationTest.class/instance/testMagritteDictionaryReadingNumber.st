tests-dictionary
testMagritteDictionaryReadingNumber
	| dictionary mag |
	dictionary := Dictionary with: 'mockPropertyBis' -> 7.
	mag := CCMagritteDictionaryReader writeDictionary: dictionary toConfiguration: CCMockConfiguration new.
	self assert: mag class equals: CCMockConfiguration.
	self assert: mag mockPropertyBis equals: 7