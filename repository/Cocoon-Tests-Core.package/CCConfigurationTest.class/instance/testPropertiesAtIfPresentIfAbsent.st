tests-properties
testPropertiesAtIfPresentIfAbsent
	| config |
	config := CCConfiguration new.
	self assert: (config propertyAt: #foo put: 'bar') equals: 'bar'.
	self assert: (config propertyAt: #foo ifPresent: [ :smth | true ] ifAbsent: [ false ]).
	self deny: (config propertyAt: #foo2 ifPresent: [ :smth | true ] ifAbsent: [ false ])