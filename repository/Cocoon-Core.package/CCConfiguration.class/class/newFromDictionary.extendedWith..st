instance creation
newFromDictionary: aSTONDictionary extendedWith: anOtherDictionary
	^ self reader writeDictionary: aSTONDictionary , anOtherDictionary toConfiguration: self new