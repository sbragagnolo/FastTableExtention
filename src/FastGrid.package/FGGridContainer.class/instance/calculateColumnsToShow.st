calculate
calculateColumnsToShow
	| colSizes colIndex |
	columnsToShow := OrderedCollection new.
	
	columnsToShow add: 0.
	columnsToShow add: columnTopCell.
	colSizes := (grid dataSource columnWidth: 0) + (grid dataSource columnWidth: columnTopCell).
	colIndex := columnTopCell + 1.
	
	[ (grid dataSource columns >= colIndex) and: [colSizes < self width] ] whileTrue:[
		columnsToShow add: colIndex.
		colSizes := colSizes + (grid dataSource columnWidth: columnTopCell).	
		colIndex := colIndex + 1.
	].