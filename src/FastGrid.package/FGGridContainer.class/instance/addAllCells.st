refreshing
addAllCells 
	(grid dataSource cellColumns: columnsToShow rows: rowsToShow) do: [ :e | self addCell: e ]