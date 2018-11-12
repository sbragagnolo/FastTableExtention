cells
cellColumns: columnIndexes rows: rowIndexes
	| cells |
	cells := OrderedCollection new.	
	
	rowIndexes do:[:r | 
		columnIndexes do: [ :c | cells add: (self cellColumn: c row: r)]
	].

	^ cells