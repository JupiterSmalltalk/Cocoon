accessing
configurations
	^ self propertyAt: 'configurations' ifAbsent: [ self defaultValueOf: #configurations ]