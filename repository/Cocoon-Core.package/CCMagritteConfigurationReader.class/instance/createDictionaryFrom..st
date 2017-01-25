action
createDictionaryFrom: value
	^ CCMagritteConfigurationReader writeConfiguration: value toDictionary: Dictionary new