initialization
importFromFile: aFileReference
	^ aFileReference readStreamDo: [ :input | self importFromStream: input ]