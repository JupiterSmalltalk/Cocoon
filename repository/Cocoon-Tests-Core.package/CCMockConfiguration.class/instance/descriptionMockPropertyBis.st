descriptions
descriptionMockPropertyBis
	<magritteDescription>
	^ MANumberDescription new
		accessor: #mockPropertyBis;
		priority: 100;
		label: 'mock property bis';
		beInteger;
		default: 0;
		min: -10 max: 10;
		yourself