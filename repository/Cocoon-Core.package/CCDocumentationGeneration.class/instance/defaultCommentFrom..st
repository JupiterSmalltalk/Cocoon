accessing
defaultCommentFrom: aDescription
	^ aDescription cocoonDefaultDocumentation ifNil: [ '==' , aDescription default printString , '==' ]