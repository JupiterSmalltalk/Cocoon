visiting-description
visitDirectoryDescription: aDescription
	self tryToAddFrom: aDescription withInterpretation: [ :value | self resolveDirectory: value ]