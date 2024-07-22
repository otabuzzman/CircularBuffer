// swift-tools-version:5.1
//===----------------------------------------------------------------------===//
//
// This source file is part of the Swift.org open source project
//
// Copyright (c) 2019 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
// See https://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//
//===----------------------------------------------------------------------===//

import PackageDescription

let package = Package(
  name: "CircularBuffer",
  products: [
    .library(
      name: "CircularBuffer",
      targets: ["CircularBuffer"]),
  ],
  dependencies: [
  ],
  targets: [
    .target(
      name: "CircularBuffer",
      dependencies: []),
    
    .testTarget(
      name: "CircularBufferTests",
      dependencies: ["CircularBuffer"]),
  ]
)
