resizing
resizeContainer
	| scrollBarWidth |

	scrollBarWidth := self theme scrollbarThickness.
	container bounds: (self topLeft extent: (self extent - (scrollBarWidth@scrollBarWidth)))