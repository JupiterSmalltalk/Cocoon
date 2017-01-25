tests-properties
testPropertiesAtIfAbsentPut
	| config |
	config := CCConfiguration new.
	self assert: (config propertyAt: #foo put: 'bar') = 'bar'.
	self assert: (config propertyAt: #foo ifAbsentPut: [ 'baz' ]) = 'bar'.
	self assert: (config propertyAt: #foo) = 'bar'.
	self assert: (config propertyAt: #bar ifAbsentPut: [ 'baz' ]) = 'baz'.
	self assert: (config propertyAt: #bar) = 'baz'