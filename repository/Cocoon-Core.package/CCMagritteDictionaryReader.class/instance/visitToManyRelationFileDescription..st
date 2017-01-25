visiting-description
visitToManyRelationFileDescription: aToManyRelationFileDescription
	self
		tryToAddFrom: aToManyRelationFileDescription
		withInterpretation: [ :collection | 
			| index |
			index := 1.
			collection
				do: [ :value | 
					collection at: index put: (self resolve: value with: aToManyRelationFileDescription).
					index := index + 1 ].
			collection ]