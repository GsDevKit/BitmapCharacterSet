tests
testConcatenation
	| set |

	set := self emptySet.
	self
		assertSet: set, self nonEmptySet
		copiedFrom: set
		equals: self nonEmptySet.

	set := self nonEmptySet.
	self
		assertSet: set, self emptySet
		copiedFrom: set
		equals: self nonEmptySet.
	self
		assertSet: set, self nonEmptySet
		copiedFrom: set
		equals: self nonEmptySet.