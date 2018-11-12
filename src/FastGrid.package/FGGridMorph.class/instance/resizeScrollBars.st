resizing
resizeScrollBars
	| scrollBarWidth verticalBarCorner verticalBarExtent horizontalBarCorner horizontalBarExtent |

	scrollBarWidth := self theme scrollbarThickness.

	verticalBarCorner := self topRight - (scrollBarWidth @ 0).
	verticalBarExtent := scrollBarWidth @ (self height - scrollBarWidth).
	verticalBar bounds: (verticalBarCorner extent: verticalBarExtent).

	horizontalBarCorner := self bottomLeft - (0 @ scrollBarWidth).
	horizontalBarExtent := (self width - scrollBarWidth) @ scrollBarWidth.
	horizontalBar
		bounds: (horizontalBarCorner extent: horizontalBarExtent)