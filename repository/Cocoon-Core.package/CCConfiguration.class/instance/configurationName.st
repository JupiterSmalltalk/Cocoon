accessing
configurationName
	^ configurationName ifNil: [ self defaultConfigurationName ]