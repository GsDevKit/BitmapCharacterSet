tests
testByteCharactersDo
	| set enumerated |

	set := self emptySet.
	enumerated := OrderedCollection new.

	set byteCharactersDo: [:each | enumerated addLast: each].
	self assert: enumerated isEmpty.

	set addAll: self characters.
	set byteCharactersDo: [:each | enumerated addLast: each].
	self assert: enumerated notEmpty.
	enumerated withIndexDo: [:each :i |
		self
			assert: each asciiValue < 256;
			assert: each = (self characters at: i)].