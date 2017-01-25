instance creation
newFromString: aString extendedWith: anOtherDictionary
	^ self newFromStream: aString readStream extendedWith: anOtherDictionary