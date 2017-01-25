tests
testHash
	| configuration |
	configuration := CCMockConfiguration new
		mockPropertyBis: 7;
		mockProperty: 'mock';
		yourself.
	self assert: configuration hash = configuration copy hash