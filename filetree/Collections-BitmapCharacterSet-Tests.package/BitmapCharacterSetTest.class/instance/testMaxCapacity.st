tests
testMaxCapacity
	| maxCapacity set |

	maxCapacity := self lastCodePoint + 1.

	set := self setClass new: maxCapacity.
	self assert: set capacity = maxCapacity.

	set := self setClass new: maxCapacity + 1.
	self assert: set capacity = maxCapacity.

	set := self setClass new: maxCapacity * 2.
	self assert: set capacity = maxCapacity.