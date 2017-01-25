tests-properties
testBaseDirectoryWithFile
		| config dir |
	config := CCConfiguration new.
	dir := FileSystem memory root / 'somethingThatNobodyWillTry'.
	dir ensureCreateDirectory.
	config baseDirectory: dir.
	self assert: config baseDirectory exists.
	
	dir delete