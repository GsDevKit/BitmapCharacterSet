tests
testHash
	self
		assert: self emptySet hash = self emptySet hash;
		assert: self nonEmptySet hash = self nonEmptySet hash