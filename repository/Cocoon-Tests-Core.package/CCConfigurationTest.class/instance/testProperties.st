tests-properties
testProperties
	| config |
	config := CCConfiguration new.
	self assert: config properties notNil.
	config instVarNamed: 'properties' put: nil.
	config propertyAt: #foo put: #bar.
	config instVarNamed: 'properties' put: nil.
	config propertyAt: #foo ifAbsent: [ nil ].
	config instVarNamed: 'properties' put: nil.
	config propertyAt: #foo ifAbsentPut: [ #bar ].
	config instVarNamed: 'properties' put: nil.
	config hasProperty: #foo.
	config instVarNamed: 'properties' put: nil