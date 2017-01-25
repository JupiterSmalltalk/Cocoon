tests
testWithRecursiveSubConfiguration2ndPosition
	| ston configuration subConfiguration |
	ston := '
	{ #configurations :
	  { "First" : { },
	    "Top" :
       { #configurations :
	      { "Sub" :
	        { #mockProperty: #bar }}}}}'.
	configuration := self fromString: ston.
	self assert: configuration configurations size equals: 2.
	subConfiguration := configuration subConfigurationNamed: 'Sub'.
	self assert: subConfiguration mockProperty equals: 'bar'