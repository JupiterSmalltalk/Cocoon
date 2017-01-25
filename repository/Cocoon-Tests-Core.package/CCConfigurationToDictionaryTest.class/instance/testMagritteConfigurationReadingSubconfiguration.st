tests-configuration
testMagritteConfigurationReadingSubconfiguration
	| configuration mag |
	configuration := CCMockConfiguration new yourself.
	configuration
		subConfiguration:
			(CCMockConfiguration new
				parent: configuration;
				mockPropertyBis: 4;
				yourself) yourself.
	mag := CCMagritteConfigurationReader writeConfiguration: configuration toDictionary: Dictionary new. 
	self assert: mag class equals: Dictionary.
	self
		assert: ((mag at: 'subConfiguration') isDictionary and: [ ((mag at: 'subConfiguration') at: 'mockPropertyBis') = 4 ])