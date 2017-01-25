comparing
= anObject
	^ self species = anObject species and: [ self properties = anObject properties and: [ self parent = anObject parent and: [ self configurationName = anObject configurationName ] ] ]