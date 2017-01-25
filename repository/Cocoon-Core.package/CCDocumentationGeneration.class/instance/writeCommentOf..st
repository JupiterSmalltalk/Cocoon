writing
writeCommentOf: aDescription
	| parameterComment |
	parameterComment := aDescription cocoonDocumentation.
	stream
		nextPutAll: '@sec:confParam:';
		nextPutAll: aDescription accessor readSelector;
		lf;
		nextPutAll:
				(parameterComment = aDescription class defaultCocoonDocumentation
						ifTrue: [ 'uncommented' ]
						ifFalse: [ parameterComment ]);
		lf;
		lf