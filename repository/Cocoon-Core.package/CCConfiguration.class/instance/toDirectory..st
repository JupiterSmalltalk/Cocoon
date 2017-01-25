private
toDirectory: aDirectory
	"I return a FileReference that corresponds to aDirectory."

	| directory |
	directory := self baseDirectory resolve: aDirectory.
	^ (directory exists and: [ directory isDirectory ])
		ifTrue: [ directory ]
		ifFalse: [ self error: aDirectory asString , ' is not a valid directory.' ]