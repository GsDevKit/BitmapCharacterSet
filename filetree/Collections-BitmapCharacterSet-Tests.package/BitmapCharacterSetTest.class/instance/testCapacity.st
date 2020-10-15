tests
testCapacity
	"Since the bitmap is allocated in bytes, the last byte can have excess capacity
	even when a specific capacity is specified."

	self
		assert: (self setClass new: 0) capacity = 256;
		assert: (self setClass new: 256) capacity = 256.
	257 to: 264 do: [:i |
		self assert: (self setClass new: i) capacity = 264].
	265 to: 272 do: [:i |
		self assert: (self setClass new: i) capacity = 272].