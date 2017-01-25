accessing - properties
inheritsPropertyAt: aKey
	"Answer true iff I (or one of my ancestors) contain a property named ==aKey==."

	^ self
		propertyAt: aKey
		ifPresent: [:value | true ]
		ifAbsent:
			[ 
			self hasParent
				ifTrue: [ self parent inheritsPropertyAt: aKey ]
				ifFalse: [ false ] ]