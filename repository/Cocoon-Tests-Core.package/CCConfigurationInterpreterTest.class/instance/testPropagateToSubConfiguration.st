tests
testPropagateToSubConfiguration
	| ston configuration subConfiguration |
	ston := '{ #mockProperty : "something", #configurations : { "Foo" : { #mockPropertyBis : 2 } } }'.
	configuration := self fromString: ston.
	self assert: configuration mockProperty equals: 'something'.
	self assert: configuration configurations size equals: 1.
	subConfiguration := configuration configurations anyOne.
	self assert: subConfiguration mockProperty equals: 'something'.
	self assert: subConfiguration mockPropertyBis equals: 2