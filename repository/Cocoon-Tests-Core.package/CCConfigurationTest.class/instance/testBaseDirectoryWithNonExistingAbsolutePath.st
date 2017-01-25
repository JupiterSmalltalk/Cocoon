tests-properties
testBaseDirectoryWithNonExistingAbsolutePath
	| config root |
	config := CCConfiguration new.
	root := FileSystem memory root.
	self should: [ config baseDirectory: root / 'somethingThatNobodyWillTry' ] raise: Error