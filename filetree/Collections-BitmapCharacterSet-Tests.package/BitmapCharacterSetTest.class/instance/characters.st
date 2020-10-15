accessing
characters
	^ characters
		ifNil: [| writeStream previousValue offset |
			writeStream := (Array new: 250000) writeStream.
			previousValue := 0.
			writeStream nextPut: previousValue asCharacter.
			offset := 1.
			1 to: self lastCodePoint do: [:i |
				previousValue + offset = i
					ifTrue: [
						writeStream nextPut: i asCharacter.
						previousValue := i.
						offset :=
							offset = 8
								ifTrue: [1]
								ifFalse: [offset + 1]]].
			characters := writeStream contents]