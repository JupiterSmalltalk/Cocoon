accessing
baseDirectory
	^ self propertyAt: 'baseDirectory' default: [ self defaultBaseDirectory ]