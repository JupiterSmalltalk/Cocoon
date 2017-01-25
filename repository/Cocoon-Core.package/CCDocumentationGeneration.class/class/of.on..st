class initialization
of: aClassConfiguration on: aStream 	
	"I generate the documentation of the parameters of a configuration on a Stream."
	
	^self new 
		stream: aStream;
		generateDocOf: aClassConfiguration;
		stream