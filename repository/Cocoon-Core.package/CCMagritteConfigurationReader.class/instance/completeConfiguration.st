action
completeConfiguration
	"I'm here to add the input without description to the dictionary"

	configuration properties keysDo: [ :each | dictionary at: each put: (configuration properties at: each) ]