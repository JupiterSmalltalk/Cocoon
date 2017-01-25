tests-configuration
testMagritteConfigurationReadingDefaultIsNotExported
	| configuration mag |
	configuration := CCMockConfiguration new.
	mag := CCMagritteConfigurationReader writeConfiguration: configuration toDictionary: Dictionary new.
	self should: [ mag at: 'mockProperty' ] raise: Error