tests
testEquals
	self
		assert: self emptySet = self emptySet;
		assert: self nonEmptySet = self nonEmptySet;
		deny: self emptySet = self nonEmptySet;
		deny: self nonEmptySet = self emptySet