tests
testNewFrom
	| set newSet |

	set := self setClass newFrom: self characters.
	self assert: set class == self setClass.
	self charactersDo: [:each | self assert: (set includes: each)].

	newSet := self setClass newFrom: set.
	self
		assert: newSet = set;
		deny: newSet == set.