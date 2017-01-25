visiting-description
visitConfigurationDescription: aConfigurationDescription
	self tryToAddFrom: aConfigurationDescription withInterpretation: [ :value | self createDictionaryFrom: value ]