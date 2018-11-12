cells
columnHeader: anIndex

	^ FGGridCell header
		addMorph: (self columnName: anIndex) asMorph;
		width: (self columnWidth: anIndex);
		height: (self rowHeight: 0);
		column: anIndex
		yourself