tests-configuration
testMagritteConfigurationReadingString
	| configuration mag |
	configuration := CCMockConfiguration new
		mockProperty: 'mock';
		yourself.
	mag := CCMagritteConfigurationReader writeConfiguration: configuration toDictionary: Dictionary new.
	self assert: mag class equals: Dictionary.
	self assert: (mag at: 'mockProperty') equals: 'mock'