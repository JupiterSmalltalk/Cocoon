instance creation
newFromStream: aStream extendedWith: anOtherDictionary
	^ [ self newFromDictionary: (STON fromStream: aStream) extendedWith: anOtherDictionary ]
		on: STONReaderError
		do: [ :error | CCConfigurationError signal: error messageText, ' Inside: ', aStream localName  ]