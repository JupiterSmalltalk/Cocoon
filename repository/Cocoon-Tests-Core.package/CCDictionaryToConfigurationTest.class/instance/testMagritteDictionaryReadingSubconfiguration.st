tests-dictionary
testMagritteDictionaryReadingSubconfiguration
	| dictionary mag |
	dictionary := Dictionary with: 'subConfiguration' -> (Dictionary with: 'mockPropertyBis' -> 5).
	mag := CCMagritteDictionaryReader writeDictionary: dictionary toConfiguration: CCMockConfiguration new.
	self assert: mag class equals: CCMockConfiguration.
	self
		assert: mag subConfiguration
		equals:
			(CCMockConfiguration new
				parent: mag;
				mockPropertyBis: 5;
				yourself)