tests
testMockProperty
	| ston configuration |
	ston := '{ #mockProperty : ''test'' }'.
	configuration := self fromString: ston.
	self assert: configuration mockProperty equals: 'test'.
	
	ston := '{ #mockProperty : ''mock'' }'.
	configuration := self fromString: ston.
	self assert: configuration mockProperty equals: 'mock'.
	configuration mockProperty: 'another'.
	self assert: configuration mockProperty equals: 'another'