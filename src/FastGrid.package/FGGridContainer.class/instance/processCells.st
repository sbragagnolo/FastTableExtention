refreshing
processCells
	| offset |
	
	self createCellCollection.
	self addAllCells.

	offset := 0@0.
	
	rowsToShow do: [ :rowIndex |
		(cells at: rowIndex) do: [ :cell | 
			cell topLeft: self topLeft + offset. 

			self addMorph: (FGGridCellOverlay for: cell). 

			offset := offset + (cell width @ 0) ].
		
		offset := (0 @ offset y) + ( 0 @ (cells at: rowIndex) anyOne height)
	]