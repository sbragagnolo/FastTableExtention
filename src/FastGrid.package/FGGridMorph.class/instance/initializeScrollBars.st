initialization
initializeScrollBars
	verticalBar := ScrollBar new
		model: self;
		setValueSelector: #verticalBarPosition:;
		yourself.
	
	horizontalBar := ScrollBar new
		model: self;
		setValueSelector: #horizontalBarPosition:;
		yourself.
		
	self addMorph: verticalBar.
	self addMorph: horizontalBar.
	
	self resizeScrollBars