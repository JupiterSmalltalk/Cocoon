visiting-description
visitFileDescription: aDescription
	self tryToAddFrom: aDescription withInterpretation: [ :value | self resolve: value with: aDescription ]