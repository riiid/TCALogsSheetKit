// swift-tools-version: 5.7

import PackageDescription

let package = Package(
  name: "LogsSheetKit",
  platforms: [
    .iOS(.v14)
  ],
  products: [
    .library(
      name: "LogsSheetKit",
      targets: ["LogsSheetKit"]),
  ],
  dependencies: [
    .package(url: "https://github.com/ivanvorobei/SPIndicator", .upToNextMajor(from: "1.6.0")),
    .package(url: "https://github.com/pointfreeco/swift-composable-architecture", .upToNextMajor(from: "0.40.0"))
  ],
  targets: [
    .target(
      name: "LogsSheetKit",
      dependencies: [
        "SPIndicator",
        .product(name: "ComposableArchitecture", package: "swift-composable-architecture")
      ]),
    .testTarget(
      name: "LogsSheetKitTests",
      dependencies: ["LogsSheetKit"]),
  ]
)
