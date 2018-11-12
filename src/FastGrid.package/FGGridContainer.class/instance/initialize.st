initialization
initialize
	super initialize.
	columnTopCell := 1.
	rowTopCell := 1.
	self color: self theme backgroundColor.
	self clipSubmorphs: true.