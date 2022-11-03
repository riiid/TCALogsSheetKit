// swift-tools-version: 5.7

import PackageDescription

let package = Package(
  name: "TCALogsSheetKit",
  platforms: [
    .iOS(.v14)
  ],
  products: [
    .library(
      name: "TCALogsSheetKit",
      targets: ["TCALogsSheetKit"]),
  ],
  dependencies: [
    .package(url: "https://github.com/pointfreeco/swift-composable-architecture", exact: "0.45.0"),
    .package(url: "https://github.com/riiid/LogsSheetKit", from: "1.0.0")
  ],
  targets: [
    .target(
      name: "TCALogsSheetKit",
      dependencies: [
        "LogsSheetKit",
        .product(name: "ComposableArchitecture", package: "swift-composable-architecture")
      ]),
    .testTarget(
      name: "TCALogsSheetKitTests",
      dependencies: [
        "TCALogsSheetKit",
        "LogsSheetKit"
      ]),
  ]
)
