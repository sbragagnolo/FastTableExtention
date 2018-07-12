configuration
showRowIndex
	| indexColumn |
	indexColumn := FTSmartIndexColumn id: '#'.
	columns ifEmpty: [ columns := {indexColumn} ].
	columns first isIndex
		ifTrue: [ indexColumn := columns first ]
		ifFalse: [ columns := {indexColumn} , columns ].
	^ indexColumn