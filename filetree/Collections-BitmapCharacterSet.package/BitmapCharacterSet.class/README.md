This class implements a set of Character objects similar to CharacterSet and WideCharacterSet, but it uses a bitmap internally to test if wide (multibyte) characters belong to it rather than using a Dictionary like WideCharacterSet does. For byte characters, a simple 256-element Array is used, the same as with CharacterSet, which is faster but uses more memory.

(Used by and heavily optimized for XMLParser; please refactor carefully)