initialization
importFromStream: aStream
	[ self importFromDictionary: (STON fromStream: aStream) ]
		on: STONReaderError
		do: [ :error | CCConfigurationError signal: error messageText ]