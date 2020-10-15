tests
testHasWideCharacters
	| set |

	set := self emptySet.
	self deny: set hasWideCharacters.

	set add: 255 asCharacter.
	self deny: set hasWideCharacters.

	set add: 256 asCharacter.
	self assert: set hasWideCharacters.

	set remove: 256 asCharacter.
	self deny: set hasWideCharacters.