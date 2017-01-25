tests-copying
testCopyProperties
	"I'm here to test if postCopy is right."

	| config |
	config := CCMockConfiguration new
		mockPropertyBis: 7;
		mockProperty: 'mock';
		yourself.
	self deny: config properties == config copy properties