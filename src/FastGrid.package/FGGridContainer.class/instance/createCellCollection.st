refreshing
createCellCollection
	| sortBlock |
	sortBlock := [ :a :b | a column < b column ].

	cells := (rowsToShow
		collect: [ :e | 
			e -> ((SortedCollection new: columnsToShow size)
						sortBlock: sortBlock;
						yourself) ]) asDictionary