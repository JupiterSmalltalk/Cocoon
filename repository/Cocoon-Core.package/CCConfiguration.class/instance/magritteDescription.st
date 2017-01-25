accessing
magritteDescription
	"If the magritte description is nil I create it and I store it."

	^ magritteDescription ifNil: [ magritteDescription := self basicMagritteDescription ]