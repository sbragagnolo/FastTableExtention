initialization
initialize
	super initialize.

	column := 0.
	row := 0.
	
	self extent: 75 @ 25.

	self color: Color transparent.

	self borderColor: self theme scrollbarColor.
	self borderWidth: 1.

	self
		clipSubmorphs: true;
		layoutPolicy: TableLayout new;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		listDirection: #leftToRight;
		listCentering: #topLeft;
		wrapCentering: #center.
