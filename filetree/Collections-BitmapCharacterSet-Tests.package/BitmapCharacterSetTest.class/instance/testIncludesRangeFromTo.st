tests
testIncludesRangeFromTo
	| set |

	set := self emptySet.
	self rangeCharacters do: [:each |
		self
			deny: (set includesRangeFrom: self rangeStart to: self rangeStop);
			assert: (set includesRangeFrom: self rangeStop to: self rangeStart).
		set add: each].
	self
		assert: (set includesRangeFrom: self rangeStart to: self rangeStop);
		assert: (set includesRangeFrom: self rangeStop to: self rangeStart).