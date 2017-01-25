accessing - properties
propertyAt: aKey ifPresent: presentBlock ifAbsent: absentBlock
	"Answer the result of ==presentBlock== if I have the property ==aKey== or the result of ==absentBlock==."

	^ self properties at: aKey ifPresent: presentBlock ifAbsent: absentBlock