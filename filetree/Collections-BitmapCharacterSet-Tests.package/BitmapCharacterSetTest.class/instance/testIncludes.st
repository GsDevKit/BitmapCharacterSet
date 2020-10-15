tests
testIncludes
	| set |

	set := self emptySet.
	self
		charactersDo: [:each | self deny: (set includes: each)];
		absentCharactersDo: [:each | self deny: (set includes: each)].

	set := self nonEmptySet.
	self
		charactersDo: [:each | self assert: (set includes: each)];
		absentCharactersDo: [:each | self deny: (set includes: each)].