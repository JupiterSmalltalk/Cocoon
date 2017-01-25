comparing
hash
	^ self species hash bitXor: (self properties hash bitXor: (self parent hash bitXor: self configurationName hash))