descriptions
descriptionBaseDirectory
	<magritteDescription>
	^ MADirectoryDescription new
		accessor: #baseDirectory;
		priority: 0;
		label: 'Cocoon base directory';
		cocoonDocumentation: 'Indicate where to look for files.';
		cocoonDefaultDocumentation: 'The current working directory';
		default: self defaultBaseDirectory;
		kind: FileReference;
		addCondition: [ :value | value exists and: [ value isDirectory ] ];
		yourself