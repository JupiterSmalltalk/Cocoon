visiting-description
visitToManyRelationConfigurationDescription: aToManyRelationConfigurationDescription
	self
		tryToAddFrom: aToManyRelationConfigurationDescription
		withInterpretation:
			[ :value | | collection |
			collection := Dictionary new.
			value
				do:
					[ :each | collection at: each configurationName put: (self createDictionaryFrom: each) ].
			collection ]