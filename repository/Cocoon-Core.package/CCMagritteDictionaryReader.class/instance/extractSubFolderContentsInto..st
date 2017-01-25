visiting-description
extractSubFolderContentsInto: aCollection
	| temp |
	temp := aCollection copy.
	temp
		do: [ :each | 
			each isDirectory
				ifTrue: [ aCollection addAll: (CollectVisitor breadthFirst: each collect: [ :file | file asFileReference ]) ] ]