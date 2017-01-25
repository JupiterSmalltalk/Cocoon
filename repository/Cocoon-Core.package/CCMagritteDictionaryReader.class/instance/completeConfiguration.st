action
completeConfiguration
	"I'm here to add the input without description to the configuration"

	dictionary
		keysDo: [ :each | 
			| accessor |
			accessor := each , ':'.
			configuration perform: accessor with: (dictionary at: each) ]