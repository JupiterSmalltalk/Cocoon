accessing
subConfigurationNamed: aString
	"I return a configuration of the name 'aString'. If this configuration doesn't exist i raise an error."

	^ self configurations
		detect: [ :each | each configurationName = aString ]
		ifNone:
			[ self configurations
				do: [ :conf | (conf subConfigurationNamed: aString) ifNotNil: [ :subsub | ^ subsub ] ].
			nil ]