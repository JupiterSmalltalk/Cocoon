tests-properties
testPropertiesHas
	| config |
	config := CCConfiguration new.
	self deny: (config hasProperty: #foo).
	config propertyAt: #foo put: 'bar'.
	self assert: (config hasProperty: #foo).
	self deny: (config hasProperty: #bar)