visiting-description
resolveDirectory: aPath
	"If you want the Directory to exist add "

	"addCondition: [ :dir | directory exists and: [ directory isDirectory ] ]"

	" to the description."

	^ configuration baseDirectory resolve: aPath