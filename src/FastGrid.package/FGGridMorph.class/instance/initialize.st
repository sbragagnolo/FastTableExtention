initialization
initialize
	super initialize.

	dataSource := FGGridDataSource new
		grid: self;
		yourself.
		
	self initializeContainer.
	self initializeScrollBars.
	
	self clipSubmorphs: true