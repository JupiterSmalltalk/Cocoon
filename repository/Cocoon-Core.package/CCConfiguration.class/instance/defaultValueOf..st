accessing defaults
defaultValueOf: propertySelector
	^ self magritteDescription children
		detect: [ :e | e accessor readSelector = propertySelector ]
		ifFound: [ :description | description default ]
		ifNone: [ 
			CCConfigurationError
				signal:
					'No default value for ' , propertySelector , '. Please add a default value on ' , self class asString
						, ' or add a value on the configuration.' ]