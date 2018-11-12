cells
rowHeader: anIndex

	^ FGGridCell header
		addMorph: (self rowName: anIndex) asMorph;
		row: anIndex;
		width: (self columnWidth: 0);
		height: (self rowHeight: anIndex);		
		yourself