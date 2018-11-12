refreshing
refreshScrollBars
	| vStep hStep |
	vStep := 1 / (self dataSource rows max: 1).
	hStep := 1 / self dataSource columns.
	
	verticalBarPosition := self container rowTopCell * vStep.
	verticalBar value: verticalBarPosition.
	verticalBar scrollDelta: vStep pageDelta: vStep * 10.
	
	horizontalBarPosition := self container columnTopCell * hStep.
	horizontalBar value: horizontalBarPosition.
	horizontalBar scrollDelta: hStep pageDelta: hStep * 10.
