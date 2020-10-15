tests
testWideCharactersDo
	| set enumerated wideCharOffset |

	set := self emptySet.
	enumerated := OrderedCollection new.

	set wideCharactersDo: [:each | enumerated addLast: each].
	self assert: enumerated isEmpty.

	set addAll: self characters.
	set wideCharactersDo: [:each | enumerated addLast: each].
	self assert: enumerated notEmpty.
	wideCharOffset :=
		(self characters findFirst: [:each | each asciiValue >= 256]) - 1.
	enumerated withIndexDo: [:each :i |
		self
			assert: each asciiValue >= 256;
			assert: each = (self characters at: wideCharOffset + i)].