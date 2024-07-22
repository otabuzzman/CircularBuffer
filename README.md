# CircularBuffer

> **Note:** This package is a **fork** of a Swift Evolution proposal for
  inclusion in the Swift standard library. The [original package](https://github.com/kitaisreal/swift-evolution-staging) is from
  [Maksim Kita](https://github.com/kitaisreal). The fork is just used
  to make the name more natural.

  * Thread on [swiftlang](https://github.com/swiftlang/swift/pull/30242)
  * Thread on [Swift forum](https://forums.swift.org/t/circular-buffer/34534)

<br>
<br>

_Original README.md starts here :_

> **Note:** This package is a part of a Swift Evolution proposal for
  inclusion in the Swift standard library, and is not intended for use in
  production code at this time.

* Proposal: [SE-NNNN](https://github.com/apple/swift-evolution/proposals/NNNN-filename.md)
* Author(s): [Maksim Kita](https://github.com/kitaisreal)


## Introduction

```swift
import CircularBuffer
```

An ordered, random-access collection.

You can use circular buffer instead of an array when you need fast
front and back insertions and deletion together with fast subsript
element access.

When CircularBuffer is full, new data will be written to the beginning
and old will be overridden.

Example:
```swift
var circularBuffer = CircularBuffer<Int>(capacity: 2)
circularBuffer.pushBack(1)
circularBuffer.pushBack(2)

print(circularBuffer)
// Prints "[1, 2]"
circularBuffer.pushBack(3)

print(circularBuffer)
// Prints "[2, 3]"
```

You can manually increase CircularBuffer size using resize(newCapacity: ) method

Example:
```swift
var circularBuffer = CircularBuffer<Int>(capacity: 2)
circularBuffer.pushBack(1)
circularBuffer.pushBack(2)
circularBuffer.pushBack(3)
print(circularBuffer)
// Prints "[2, 3]"

circularBuffer.resize(newCapacity: 3)
circularBuffer.pushBack(4)
print(circularBuffer)
// Prints "[2, 3, 4]"
```

CircularBuffer supports both front and back insertion and deletion.
```swift
var circularBuffer = CircularBuffer<Int>(capacity: 2)
circularBuffer.pushBack(1)
circularBuffer.pushFront(2)
print(circularBuffer)
// Prints "[2, 3]"
// Now buffer isFull so next
// writes will override data at beggining

circularBuffer.pushFront(4)
print(circularBuffer)
// Prints "[4, 2]"

circularBuffer.pushBack(3)
print(circularBuffer)
// Prints "[2, 3]"

circularBuffer.popFront()
print(circularBuffer)
// Prints "[3]"

circularBuffer.popBack()
print(circularBuffer)
// Prints "[]"
```

## Usage

To use this library in a Swift Package Manager project,
add the following to your `Package.swift` file's dependencies:

```swift
.package(
    url: "https://github.com/otabuzzman/CircularBuffer.git"),
```


