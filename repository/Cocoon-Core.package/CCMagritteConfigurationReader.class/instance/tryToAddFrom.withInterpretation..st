visiting-description
tryToAddFrom: aDescription withInterpretation: aBlock
	"I take a description, check if the element describe by the description is on the Configuration, if I find it, I interpret it and I add it to the dictionary."

	| accessor |
	accessor := self readSelectorFor: aDescription.
	configuration properties
		at: accessor
		ifPresent: [ :value | 
			aDescription validate: value.
			dictionary at: accessor put: (aBlock value: value).
			configuration properties removeKey: accessor ]