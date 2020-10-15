tests
testAdd
	| set |

	set := self emptySet.
	self charactersDo: [:each |
		self
			deny: (set includes: each);
			assert: (set add: each) = each;
			assert: (set includes: each);
			assert: (set add: each) = each;
			assert: (set includes: each)].