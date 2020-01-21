// swift-tools-version:5.0

import PackageDescription

let package = Package(
  name: "Runglish",
  platforms: [
    .macOS(.v10_12),
    .iOS(.v10),
    .tvOS(.v10)
  ],
  products: [
    // Products define the executables and libraries produced by a package, and make them visible to other packages.
    .library(name: "Runglish", targets: ["Runglish"]),
  ],
  dependencies: [],
  targets: [
    .target(
      name: "Runglish",
      dependencies: [],
      path: "Sources"),
    .testTarget(
      name: "RunglishTests",
      dependencies: ["Runglish"]),
  ]
)
