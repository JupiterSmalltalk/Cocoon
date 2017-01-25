tests
testWithSubConfiguration
	| ston configuration subConfiguration |
	ston := '{ #configurations : { "Foo" : { #mockProperty : #bar } } }'.
	configuration :=self fromString: ston.
	self assert: configuration configurations size equals: 1.
	subConfiguration := configuration configurations anyOne.
	self assert: subConfiguration mockProperty equals: 'bar'