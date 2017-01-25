writing
writeDefaultCommentFor: aDescription
	stream
		lf;
		lf;
		nextPutAll: 'Default value: ';
		nextPutAll: (self defaultCommentFrom: aDescription);
		lf;
		lf