*Cocoon-Core
cocoonDefaultDocumentation
	"Answer the default documentation of the receiving description. This is use by Cocoon to generate documentation about default value"

	^ self propertyAt: #cocoonDefaultDocumentation ifAbsent: [ self class defaultCocoonDefaultDocumentation ]