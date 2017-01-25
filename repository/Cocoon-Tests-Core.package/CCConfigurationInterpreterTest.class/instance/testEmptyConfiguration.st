tests
testEmptyConfiguration
	| ston configuration |
	ston := '{  }'.
	configuration := self fromString: ston.
	self assert: configuration mockProperty equals: 'defaultMockValue'	"the default"