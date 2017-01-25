accessing - properties
propertyAt: aKey
	"Answer the value of the property ==aKey==, raises an error if the property doesn't exist."

	^ self propertyAt: aKey ifAbsent: [ 
		self hasParent
			ifTrue: [ self parent propertyAt: aKey ]
			ifFalse: [self errorPropertyNotFound: aKey ]]