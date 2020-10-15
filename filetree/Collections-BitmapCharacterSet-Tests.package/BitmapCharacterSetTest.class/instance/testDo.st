tests
testDo
	| set enumerated |

	set := self emptySet.
	enumerated := OrderedCollection new.

	set do: [:each | enumerated addLast: each].
	self assert: enumerated isEmpty.

	set addAll: self characters.
	set do: [:each | enumerated addLast: each].
	self assert: enumerated size = self characters size.
	enumerated
		with: self characters
		do: [:enumeratedChar :expectedChar |
			self assert: enumeratedChar = expectedChar]