action
createConfigurationFrom: anAssociation
	| config |
	config := configuration class new
		configurationName: anAssociation key;
		parent: configuration;
		yourself.
	^ self class writeDictionary: anAssociation value toConfiguration: config