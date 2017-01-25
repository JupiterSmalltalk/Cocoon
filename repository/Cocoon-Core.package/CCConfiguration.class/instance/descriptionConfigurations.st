descriptions
descriptionConfigurations
	<magritteDescription>
	^ CCMagrigtteToManyRelationConfigurationDescription new
		accessor: #configurations;
		priority: 100;
		label: 'Subconfigurations of Cocoon.';
		cocoonDocumentation:
			'Each configuration can define several sub configurations, each of which inherits the properties of its parent.';
		classes: {self class};
		cocoonDefaultDocumentation: 'A dictionary of default configurations from the exporters.';
		default: Dictionary new;
		yourself