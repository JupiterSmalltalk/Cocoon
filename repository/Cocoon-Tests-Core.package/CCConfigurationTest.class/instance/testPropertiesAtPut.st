tests-properties
testPropertiesAtPut
	| config |
	config := CCConfiguration new.
	config propertyAt: #foo put: 'bar'.
	self assert: (config propertyAt: #foo) = 'bar'.
	config propertyAt: #foo put: 'baz'.
	self assert: (config propertyAt: #foo) = 'baz'