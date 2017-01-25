action
write: aDictionary to: aConfiguration
	dictionary := aDictionary.
	configuration := aConfiguration.
	aDictionary
		at: 'baseDirectory'
		ifPresent: [ :elem | 
			aConfiguration baseDirectory: elem.
			aDictionary removeKey: 'baseDirectory' ].
	self visitAll: aConfiguration magritteDescription children.	"We rebuild the description because the default directory might have changed."
	self completeConfiguration.
	^ configuration