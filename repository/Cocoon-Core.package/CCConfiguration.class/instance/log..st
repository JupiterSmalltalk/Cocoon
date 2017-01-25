private
log: aString
	self verbose
		ifTrue: [ 
			FileStream stderr
				<< aString;
				cr ]