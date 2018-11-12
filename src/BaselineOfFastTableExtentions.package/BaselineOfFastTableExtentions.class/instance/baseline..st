baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				package: #FastTableExtentions;
				package: #FastGrid.
			spec group: 'minimal' with: #(#FastTableExtentions #FastGrid) ]