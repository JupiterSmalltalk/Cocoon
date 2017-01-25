tests
testWithRecursiveSubConfigurationAccessedByName
	| ston configuration subConfiguration |
	ston := '
	{ #configurations :
	  { "Top" :
	    { #configurations : { "Sub" : {  }},
	      #mockProperty: #bar }}}'.
	configuration := self fromString: ston.
	subConfiguration := configuration subConfigurationNamed: 'Sub'.
	self assert: subConfiguration mockProperty equals: 'bar'