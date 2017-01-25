tests-configuration
testMagritteConfigurationReadingSubconfigurations
	| configuration mag |
	configuration := CCMockConfiguration new yourself.
	configuration
		subConfigurations:
			(OrderedCollection
				with:
							(CCMockConfiguration new
								configurationName: 'Foo';
								parent: configuration;
								mockPropertyBis: 7;
								yourself) yourself) yourself.
	mag := CCMagritteConfigurationReader writeConfiguration: configuration toDictionary: Dictionary new.
	self assert: mag class equals: Dictionary.
	self
		assert:
			((mag at: 'subConfigurations') isDictionary
				and: [ (((mag at: 'subConfigurations') at: 'Foo') at: 'mockPropertyBis') = 7 ])