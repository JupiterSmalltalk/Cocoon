descriptions
descriptionMockPropertyFile
	<magritteDescription>
	^ MAFileDescription new
		defaultDirectory: self baseDirectory;
		priority: 100;
		accessor: #mockPropertyFile;
		label: 'mock property file';
		default: nil;
		kind: FileReference;
		addCondition: [ :value | value exists ];
		yourself