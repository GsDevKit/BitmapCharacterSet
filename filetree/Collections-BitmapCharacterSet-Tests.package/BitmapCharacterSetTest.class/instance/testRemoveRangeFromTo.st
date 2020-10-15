tests
testRemoveRangeFromTo
	| set |

	set := self emptySet.
	self "empty range, because from > to"
		assert: (set removeRangeFrom: self rangeStop to: self rangeStart) == set;
		assert: set isEmpty.

	set addRangeFrom: self rangeStart to: self rangeStop.
	self
		assert: (set removeRangeFrom: self rangeStart to: self rangeStop) == set;
		assert: set isEmpty.

	self rangeCharacters do: [:each |
		set := self setClass newFrom: self rangeCharacters.
		self
			assert: (set removeRangeFrom: each to: each) == set;
			assert:
				set =
					(self setClass newFrom: (self rangeCharacters copyWithout: each)).
		self
			should: [set removeRangeFrom: each to: each]
			raise: Error].