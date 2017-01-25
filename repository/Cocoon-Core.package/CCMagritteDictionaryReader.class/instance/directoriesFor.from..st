visiting-description
directoriesFor: path from: dirs
	| directories |
	directories := Set new.
	path first = '**'
		ifTrue:
			[ 
			dirs
				do:
					[ :dir | directories addAll: (dir allDirectoriesMatching: path first) ] ]
		ifFalse:
			[ 
			dirs
				do:
					[ :dir | directories addAll: (dir directoriesMatching: path first) ] ].
	^ directories