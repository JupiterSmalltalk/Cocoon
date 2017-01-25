descriptions
descriptionMockProperty
	<magritteDescription>
	^ MAStringDescription new
		accessor: #mockProperty;
		priority: 100;
		label: 'mock property';
		default: 'defaultMockValue';
		addCondition: [ :value | value notEmpty ];
		yourself