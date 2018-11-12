accessing
hasRow: aRowIndex
	^ aRowIndex > 0 and: [ self elements size >= aRowIndex ]