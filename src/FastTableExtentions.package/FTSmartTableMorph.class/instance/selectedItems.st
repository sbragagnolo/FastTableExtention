accessin
selectedItems
	^ self selectedRowIndexes reject: [ :v | v = 0 ] thenCollect: [ :d | self elements at: d ]