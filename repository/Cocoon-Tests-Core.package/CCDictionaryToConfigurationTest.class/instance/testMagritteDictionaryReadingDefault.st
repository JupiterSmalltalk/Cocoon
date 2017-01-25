tests-dictionary
testMagritteDictionaryReadingDefault
	| dictionary mag |
	dictionary := Dictionary new.
	mag := CCMagritteDictionaryReader writeDictionary: dictionary toConfiguration: CCMockConfiguration new.
	self assert: mag class equals: CCMockConfiguration.
	self assert: mag mockProperty equals: 'defaultMockValue'