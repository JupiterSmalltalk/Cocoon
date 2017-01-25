action
generateDocOf: aClassConfiguration
	"I return a Stream with the documentation of the properties of Cocoon."

	self visitAll: (self sortedChildrenOf: aClassConfiguration).
	^ self stream