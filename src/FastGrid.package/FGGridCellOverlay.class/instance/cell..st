accessing
cell: anObject
	cell := anObject.
	self topLeft: cell topLeft.
	self extent: cell extent.