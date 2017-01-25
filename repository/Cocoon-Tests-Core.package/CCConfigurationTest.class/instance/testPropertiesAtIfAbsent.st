tests-properties
testPropertiesAtIfAbsent
	| config |
	config := CCConfiguration new.
	self assert: (config propertyAt: #foo put: 'bar') = 'bar'.
	self assert: (config propertyAt: #foo ifAbsent: [ 'baz' ]) = 'bar'.
	self assert: (config propertyAt: #bar ifAbsent: [ 'baz' ]) = 'baz'