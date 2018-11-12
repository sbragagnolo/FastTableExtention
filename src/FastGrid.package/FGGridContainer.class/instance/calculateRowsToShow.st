calculate
calculateRowsToShow
	| rowSizes rowIndex |
	rowsToShow := OrderedCollection new.
	
	rowsToShow add: 0.
	rowsToShow add: rowTopCell.
	rowSizes := (grid dataSource rowHeight: 0) + (grid dataSource rowHeight: rowTopCell).
	rowIndex := rowTopCell + 1.
	
	[ (grid dataSource rows >= rowIndex) and: [rowSizes < self height] ] whileTrue:[
		rowsToShow add: rowIndex.
		rowSizes := rowSizes + (grid dataSource rowHeight: columnTopCell).	
		rowIndex := rowIndex + 1.
	].