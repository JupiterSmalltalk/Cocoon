tests-dictionary
testReadWithInputWithoutDescription
	| dictionary mag |
	dictionary := Dictionary with: 'foo' -> 'bar'.
	mag := CCMagritteDictionaryReader writeDictionary: dictionary toConfiguration: CCMockConfiguration new.
	self assert: mag foo equals: 'bar'