instance creation
newFromDictionary: aSTONDictionary
	^ self reader writeDictionary: aSTONDictionary toConfiguration: self new