tests
testWithRecursiveSubConfiguration
	| ston configuration topConfiguration subConfiguration |
	ston := '
	{ #configurations :
	  { "Top" :
	    { #configurations :
	      { "Sub" :
	        { #mockProperty: #bar }}}}}'.
	configuration := self fromString: ston.
	self assert: configuration configurations size equals: 1.
	topConfiguration := configuration configurations anyOne.
	self assert: topConfiguration configurations size equals: 1.
	subConfiguration := topConfiguration configurations anyOne.
	self assert: subConfiguration mockProperty equals: 'bar'