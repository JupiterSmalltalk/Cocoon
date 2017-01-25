instance creation
newFromFile: aFile
	^ aFile readStreamDo: [ :input | self newFromStream: input ]