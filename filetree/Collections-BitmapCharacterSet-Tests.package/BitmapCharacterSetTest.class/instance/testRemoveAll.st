tests
testRemoveAll
	| set capacity byteCharactersSize wideCharactersSize|

	set := self nonEmptySet.
	capacity := set capacity.
	byteCharactersSize := set byteCharacters size.
	wideCharactersSize := set wideCharacters size.
	self
		assert: set removeAll == set;
		assert: set size = 0;
		assert: set capacity = capacity;
		assert: set byteCharacters size = byteCharactersSize;
		assert: (set byteCharacters allSatisfy: [:each | each = false]);
		assert: set wideCharacters size = wideCharactersSize;
		assert: (set wideCharacters allSatisfy: [:each | each = 0]).