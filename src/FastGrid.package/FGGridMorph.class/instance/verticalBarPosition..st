refreshing
verticalBarPosition: aValue
	verticalBarPosition := aValue.
	self container rowTopCell: ((aValue * self dataSource rows) floor max: 1).
	self container refresh