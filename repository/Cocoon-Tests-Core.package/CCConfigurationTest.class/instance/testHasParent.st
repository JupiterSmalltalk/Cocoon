tests-testing
testHasParent
	| config configChild |
	config := CCConfiguration new.
	configChild := CCConfiguration new.
	configChild parent: config.
	self deny: config hasParent.
	self assert: configChild hasParent