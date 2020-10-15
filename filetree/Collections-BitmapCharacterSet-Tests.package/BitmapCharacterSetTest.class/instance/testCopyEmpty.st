tests
testCopyEmpty
	| set |

	set := self emptySet.
	self
		assertSet: set copyEmpty
		copiedFrom: set
		equals: self emptySet.

	set := self nonEmptySet.
	self
		assertSet: set copyEmpty
		copiedFrom: set
		equals: self emptySet.