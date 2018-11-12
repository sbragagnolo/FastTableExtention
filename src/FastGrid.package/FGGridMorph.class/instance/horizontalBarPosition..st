accessing
horizontalBarPosition: aValue
	horizontalBarPosition := aValue.
	self container columnTopCell: ((aValue * self dataSource columns) floor max: 1).
	self container refresh