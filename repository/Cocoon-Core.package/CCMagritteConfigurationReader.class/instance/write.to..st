action
write: aConfiguration to: aDictionary
	"I write the content of a Configuration to a Dictionary following a Magritte Description."

	configuration := aConfiguration.
	dictionary := aDictionary.
	baseDirectory := aConfiguration baseDirectory.
	aConfiguration magritteDescription children
		detect: [ :each | each accessor readSelector = 'baseDirectory' ]
		ifFound: [ :description | self visitDirectoryDescription: description ].	"We do that in order to have the base directory to interprete the files later."
	self visitAll: aConfiguration magritteDescription children.	"We rebuild the description because the default directory might have changed."
	self visitAll: aConfiguration magritteDescription children.
	self completeConfiguration.
	^ dictionary