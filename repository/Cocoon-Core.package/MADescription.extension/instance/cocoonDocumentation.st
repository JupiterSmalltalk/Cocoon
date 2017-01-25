*Cocoon-Core
cocoonDocumentation
	"Answer the documentation of the receiving description. This is use by Cocoon to generate documentation about  a parameter"

	^ self propertyAt: #cocoonDocumentation ifAbsent: [ self class defaultCocoonDocumentation ]