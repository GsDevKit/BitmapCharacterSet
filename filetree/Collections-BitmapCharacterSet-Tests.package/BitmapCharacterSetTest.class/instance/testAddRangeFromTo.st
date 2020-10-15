tests
testAddRangeFromTo
	| set |

	set := self emptySet.
	self "empty range, because from > to"
		assert: (set addRangeFrom: self rangeStop to: self rangeStart) == set;
		assert: set isEmpty.

	self
		assert: (set addRangeFrom: self rangeStart to: self rangeStop) == set;
		assert: set = (self setClass newFrom: self rangeCharacters).

	set := self emptySet.
	self
		assert: (set addRangeFrom: self rangeStart to: self rangeStart) == set;
		assert: set = (self setClass with: self rangeStart).