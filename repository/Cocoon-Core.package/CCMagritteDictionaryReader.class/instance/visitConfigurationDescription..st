visiting-description
visitConfigurationDescription: aConfigurationDescription
	self
		tryToAddFrom: aConfigurationDescription
		withInterpretation:
			[ :value | self createConfigurationFrom: configuration defaultConfigurationName -> value ]