visiting-description
resolve: path with: aDescription
	^ path class = FileReference
		ifTrue: [ path ]
		ifFalse: [ 
			| file |
			file := configuration baseDirectory resolve: path.
			file exists
				ifFalse: [ CCConfigurationError signal: path , ' is not a valid file name into ' , configuration baseDirectory asString , '.' ].
			file ]