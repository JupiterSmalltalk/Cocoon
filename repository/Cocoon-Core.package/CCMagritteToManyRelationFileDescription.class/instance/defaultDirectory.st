file system
defaultDirectory

	^ self propertyAt: #defaultDirectory ifAbsent: [ MAFileSystem imageDirectory ].