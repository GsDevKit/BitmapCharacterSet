tests
testCopy
	| set |

	set := self emptySet.
	self
		assertSet: set copy
		copiedFrom: set
		equals: self emptySet.

	set := self nonEmptySet.
	self
		assertSet: set copy
		copiedFrom: set
		equals: self nonEmptySet.