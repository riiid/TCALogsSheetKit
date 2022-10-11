// swift-tools-version: 5.7

import PackageDescription

let package = Package(
  name: "ComposableLogsSheetKit",
  platforms: [
    .iOS(.v14)
  ],
  products: [
    .library(
      name: "ComposableLogsSheetKit",
      targets: ["ComposableLogsSheetKit"]),
  ],
  dependencies: [
    .package(url: "https://github.com/pointfreeco/swift-composable-architecture", .exact("0.40.0")),
    .package(url: "https://github.com/riiid/LogsSheetKit", branch: "LogsSheetManager")
  ],
  targets: [
    .target(
      name: "ComposableLogsSheetKit",
      dependencies: [
        "LogsSheetKit",
        .product(name: "ComposableArchitecture", package: "swift-composable-architecture")
      ]),
    .testTarget(
      name: "ComposableLogsSheetKitTests",
      dependencies: [
        "ComposableLogsSheetKit",
        "LogsSheetKit"
      ]),
  ]
)
