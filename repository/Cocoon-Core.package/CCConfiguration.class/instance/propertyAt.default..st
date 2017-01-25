accessing - properties
propertyAt: aKey default: aBlock
	"Answer the value of ==aKey==. If the key have no entry I look on the parent or execute a block if i'm an orphan."

	^ self
		propertyAt: aKey
		ifAbsent: [ 
			self hasParent
				ifTrue: [ self parent propertyAt: aKey default: aBlock ]
				ifFalse: aBlock ]