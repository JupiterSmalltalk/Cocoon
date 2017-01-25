tests-dictionary
testMagritteDictionaryReadingSubconfigurationsPropagate
	| dictionary mag |
	dictionary := Dictionary
		with: 'mockPropertyBis' -> 5
		with: 'configurations' -> (Dictionary with: 'Foo' -> Dictionary new).
	mag := CCMagritteDictionaryReader writeDictionary: dictionary toConfiguration: CCMockConfiguration new.
	self assert: mag class equals: CCMockConfiguration.
	self assert: (mag subConfigurationNamed: 'Foo') mockPropertyBis equals: 5