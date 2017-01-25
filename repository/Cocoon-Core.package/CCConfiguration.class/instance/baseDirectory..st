accessing
baseDirectory: aDirectory
	"Set the directory where to look for the file with non-absolute path or a Directory as FileReference."

	self propertyAt: 'baseDirectory' put: (self toDirectory: aDirectory)