tests
testComplement
	| set complement |

	set := self nonEmptySet.
	complement := set complement.
	self deny: set = complement.
	self charactersDo: [:each |
		self
			assert: (set includes: each);
			deny: (complement includes: each)].
	self absentCharactersDo: [:each |
		self
			deny: (set includes: each);
			assert: (complement includes: each)].

	self assert: complement complement = set.