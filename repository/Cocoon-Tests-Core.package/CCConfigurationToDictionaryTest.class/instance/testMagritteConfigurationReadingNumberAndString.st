tests-configuration
testMagritteConfigurationReadingNumberAndString
	| configuration mag |
	configuration := CCMockConfiguration new
		mockPropertyBis: 7;
		mockProperty: 'mock';
		yourself.
	mag := CCMagritteConfigurationReader writeConfiguration: configuration toDictionary: Dictionary new.
	self assert: mag class equals: Dictionary.
	self assert: (mag at: 'mockPropertyBis') equals: 7.
	self assert: (mag at: 'mockProperty') equals: 'mock'