descriptions
descriptionSubConfigurations
	<magritteDescription>
	^ CCMagrigtteToManyRelationConfigurationDescription new
		priority: 100;
		accessor: #subConfigurations;
		label: 'mock subconfigurations';
		classes: {CCMockConfiguration};
		default:
				(Dictionary new
						at: 'default'
							put:
								(CCMockConfiguration new properties
										at: 'subConfigurations' put: Dictionary new;
										yourself);
						yourself);
		yourself