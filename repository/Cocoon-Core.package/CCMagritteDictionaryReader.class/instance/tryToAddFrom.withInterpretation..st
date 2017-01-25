visiting-description
tryToAddFrom: aDescription withInterpretation: aBlock
	"I take a Description, check if an object of the dictionary match with the description, if I find one, I interpret it and add it to the configuration."

	| accessor |
	accessor := aDescription accessor selector.
	dictionary
		at: accessor
		ifPresent: [ :value | 
			| newValue |
			newValue := aBlock value: value.
			aDescription validate: newValue.
			dictionary removeKey: accessor.
			configuration write: newValue using: aDescription ]