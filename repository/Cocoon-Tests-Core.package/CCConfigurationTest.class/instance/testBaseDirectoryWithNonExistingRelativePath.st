tests-properties
testBaseDirectoryWithNonExistingRelativePath
	| config |
	config := CCConfiguration new.
	self should: [ config baseDirectory: 'somethingThatNobodyWillTry' ] raise: Error