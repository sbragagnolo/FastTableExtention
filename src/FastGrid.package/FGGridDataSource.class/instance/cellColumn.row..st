cells
cellColumn: colIndex row: rowIndex
	colIndex = 0 ifTrue: [ ^ self rowHeader: rowIndex ].
	rowIndex = 0 ifTrue: [ ^ self columnHeader: colIndex ].

	^ FGGridCell new
		row: rowIndex;
		column: colIndex;
		addMorph: ( rowIndex asString , ',' , colIndex asString ) asMorph;
		width: (self columnWidth: colIndex);
		height: (self rowHeight: rowIndex);
		yourself