writing
writeAccesorOf: aDescription
	stream
		nextPutAll: '!!!! ';
		nextPutAll: aDescription accessor readSelector;
		lf