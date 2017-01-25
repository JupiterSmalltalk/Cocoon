action
sortedChildrenOf: aConfigurationClass
	^ aConfigurationClass new magritteDescription children
		sorted: [ :description1 :description2 | description1 accessor readSelector < description2 accessor readSelector ]