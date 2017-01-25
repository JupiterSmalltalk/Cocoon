descriptions
descriptionMockPropertyFileList
	<magritteDescription>
	^ CCMagritteToManyRelationFileDescription new
		defaultDirectory: self baseDirectory;
		priority: 100;
		accessor: #mockPropertyFileList;
		label: 'mock property file list';
		classes: {FileReference};
		default: Array new;
		yourself