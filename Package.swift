// swift-tools-version: 5.9

import PackageDescription

let package = Package(
  name: "CodeEditSymbols",
  platforms: [
    .macOS(.v13),
  ],
  products: [
    // Products define the executables and libraries a package produces, and make them visible to other packages.
    .library(
      name: "CodeEditSymbols",
      targets: ["CodeEditSymbols"]
    ),
  ],
  dependencies: [
    .package(
      url: "https://github.com/pointfreeco/swift-snapshot-testing.git",
      from: "1.11.1"
    ),
  ],
  targets: [
    .target(
      name: "CodeEditSymbols",
      dependencies: [],
      resources: [
        .process("Resources"),
      ]
    ),
    .testTarget(
      name: "CodeEditSymbolsTests",
      dependencies: [
        .product(name: "SnapshotTesting", package: "swift-snapshot-testing"),
        .target(name: "CodeEditSymbols"),
      ]
    ),
  ]
)
