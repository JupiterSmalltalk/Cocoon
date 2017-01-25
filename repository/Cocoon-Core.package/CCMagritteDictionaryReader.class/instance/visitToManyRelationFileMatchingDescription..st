visiting-description
visitToManyRelationFileMatchingDescription: aToManyRelationFileMatchingDescription
	self
		tryToAddFrom: aToManyRelationFileMatchingDescription
		withInterpretation: [ :collection | 
			| result |
			result := Set new.
			collection do: [ :path | result addAll: (self filesMatching: path) ].
			self extractSubFolderContentsInto: result.
			result ]