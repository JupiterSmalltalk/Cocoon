instance creation
newFromStream: aStream
	^ [ self newFromDictionary: (STON fromStream: aStream) ]
		on: STONReaderError
		do: [ :error | CCConfigurationError signal: error messageText ]