instance creation
newFromFile: aFile extendedWith: anOtherDictionary
	^ aFile readStreamDo: [ :input | self newFromStream: input extendedWith: anOtherDictionary ]