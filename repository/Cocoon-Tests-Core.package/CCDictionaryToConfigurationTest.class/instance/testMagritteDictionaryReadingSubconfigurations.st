tests-dictionary
testMagritteDictionaryReadingSubconfigurations
	| dictionary mag |
	dictionary := Dictionary
		with:
			'subConfigurations' -> (Dictionary with: 'Foo' -> (Dictionary with: 'mockPropertyBis' -> 5)).
	mag := CCMagritteDictionaryReader
		writeDictionary: dictionary
		toConfiguration: CCMockConfiguration new.
	self assert: mag class equals: CCMockConfiguration.
	self
		assert: mag subConfigurations
		equals:
			(OrderedCollection
				with:
					(CCMockConfiguration new
						configurationName: 'Foo';
						parent: mag;
						mockPropertyBis: 5;
						yourself))