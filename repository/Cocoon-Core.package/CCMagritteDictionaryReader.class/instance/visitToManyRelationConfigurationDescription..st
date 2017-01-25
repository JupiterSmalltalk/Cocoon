visiting-description
visitToManyRelationConfigurationDescription: aToManyRelationConfigurationDescription
	self
		tryToAddFrom: aToManyRelationConfigurationDescription
		withInterpretation:
			[ :collection | | configurations |
			configurations := OrderedCollection new.
			collection associationsDo: [ :value | configurations add: (self createConfigurationFrom: value) ].
			configurations ]