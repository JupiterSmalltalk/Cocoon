tests-properties
testPropertiesAt
	| config |
	config := CCConfiguration new.
	self assert: (config propertyAt: #foo put: 'bar') = 'bar'.
	self assert: (config propertyAt: #foo) = 'bar'.
	self should: [ config propertyAt: #bar ] raise: PropertyError