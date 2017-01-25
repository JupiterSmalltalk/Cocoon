tests-configuration
testMagritteConfigurationReadingWrongDictionary
	self
		should: [ 
			CCMockConfiguration new
				mockPropertyBis: 15;
				yourself ]
		raise: MAValidationError