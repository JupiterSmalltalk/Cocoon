tests-configuration
testReadconfigurationWithInputWithoutDescription
	| configuration mag |
	configuration := CCMockConfiguration new
		foo: 'bar';
		yourself.
	mag := CCMagritteConfigurationReader writeConfiguration: configuration toDictionary: Dictionary new.
	self assert: (mag at: 'foo') equals: 'bar'