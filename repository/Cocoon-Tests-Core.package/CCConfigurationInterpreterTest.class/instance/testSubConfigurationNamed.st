tests
testSubConfigurationNamed
	| ston configuration subConfiguration |
	ston := '{ #configurations : { "Foo" : { #mockProperty: ''something'' } } }'.
	configuration :=self fromString: ston.
	subConfiguration := configuration subConfigurationNamed: 'Foo'.
	self assert: subConfiguration mockProperty equals: 'something'