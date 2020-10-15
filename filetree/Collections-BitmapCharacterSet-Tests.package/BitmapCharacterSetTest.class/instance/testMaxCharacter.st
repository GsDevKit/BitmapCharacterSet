tests
testMaxCharacter
	| set |

	set := self emptySet.
	self
		shouldnt: [set add: self lastCodePoint asCharacter]
		raise: Error.
	self assert: (set includes: self lastCodePoint asCharacter).
	self
		should: [set add: (self lastCodePoint + 1) asCharacter]
		raise: Error.