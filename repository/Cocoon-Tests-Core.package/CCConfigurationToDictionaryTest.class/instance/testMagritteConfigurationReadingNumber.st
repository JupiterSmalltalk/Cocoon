tests-configuration
testMagritteConfigurationReadingNumber
	| configuration mag |
	configuration := CCMockConfiguration new mockPropertyBis: 7; yourself.
	mag := CCMagritteConfigurationReader writeConfiguration: configuration toDictionary: Dictionary new.
	self assert: mag class equals: Dictionary.
	self assert: (mag at: 'mockPropertyBis') equals: 7