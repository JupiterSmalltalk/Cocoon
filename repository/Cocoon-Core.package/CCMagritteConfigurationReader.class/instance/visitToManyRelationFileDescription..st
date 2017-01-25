visiting-description
visitToManyRelationFileDescription: aToManyRelationFileDescription
	self
		tryToAddFrom: aToManyRelationFileDescription
		withInterpretation: [ :value | 
			| index |
			index := 1.
			value
				do: [ :each | 
					value at: index put: (self pathOf: each).
					index := index + 1 ].
			value ]