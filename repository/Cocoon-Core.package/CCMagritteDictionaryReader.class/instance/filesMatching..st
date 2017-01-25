visiting-description
filesMatching: regexPath
	| path result dirs |
	self flag: #todo. "Latter the user should be able to reject some files with a annotation as '- *.pillar'"
	path := regexPath splitOn: $/.
	result := Set new.
	dirs := OrderedCollection with: configuration baseDirectory.	"We begin to search from the base directory."
	[ path size = 1 ]
		whileFalse:
			[ 
			dirs := self directoriesFor: path from: dirs.
			path removeFirst ].
	dirs do:
		[ :dir | result addAll: (dir childrenMatching: path first) ].
	^ result