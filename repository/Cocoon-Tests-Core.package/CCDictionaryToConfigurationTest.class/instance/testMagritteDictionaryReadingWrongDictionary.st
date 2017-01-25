tests-dictionary
testMagritteDictionaryReadingWrongDictionary
	| dictionary |
	dictionary := Dictionary with: 'mockProperty' -> ''.
	self should: [ CCMagritteDictionaryReader writeDictionary: dictionary toConfiguration: CCMockConfiguration new ] raise: MAValidationError