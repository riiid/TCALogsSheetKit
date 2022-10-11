# TCALogsSheetKit

## Table of contents

1. [Introduction](#introduction)
2. [Usage](#usage)
3. [Installation](#installation)
4. [Contribution](#contribution)
5. [Maintainers](#maintainers)

## Introduction

Lightweight customizable logger for iOS using Swift 5.7, with minimum iOS 14 version for [TCA](https://github.com/pointfreeco/swift-composable-architecture)
<img width="473" alt="Screenshot 2022-10-11 at 2 35 12 PM" src="https://user-images.githubusercontent.com/46320390/195005069-492cda9a-2381-40fc-a94a-7a6c110d4a6a.png">


## Usage

Usage of TCALogsSheetKit is pretty straight-forward, since TCALogsSheetKit handles most of the work by itself.

In order to log any message, just add .log(isDebug: ) under your reducer.

``` swift
  }
    .log(isDebug: true)
```

You also can add custom message if you want by simply doing: 

``` swift
  }
    .log(isDebug: true) { action in
      return "Riiid with \(action)"
  }

```

In order to open LogsSheetView, just present LogsSheet(), and that's it!
 
 
## Installation

Riiid's LogsSheetKit can be installed through Swift Package Manager easily and with comfort.

```swift
let package = Package(
  name: "MyPackage",
  dependencies: [
    .package(url: "https://github.com/riiid/TCALogsSheetKit.git", .upToNextMajor(from: "1.0.0"))
  ],
  targets: [
    .target(name: "MyTarget", dependencies: ["TCALogsSheetKit"])
  ]
)
```


## Contribution

Any discussion and or pull requests are welcome!

In order to contribute, please subbranch from main, and after finishing the work open PR to main branch. Please note that PR should be reviewed by 2 people from code owners!

Please provide as much information about your proposed changes as possible.

## Maintainers

- [tisohjung](https://github.com/tisohjung)
- [korJAEYOUNGYUN](https://github.com/korJAEYOUNGYUN)
- [SongJiyeon](https://github.com/SongJiyeon) 
- [yermukhanbet](https://github.com/yermukhanbet)

## License

TCALogsSheetKit is under MIT license. See the [LICENSE](https://github.com/riiid/TCALogsSheetKit/blob/main/LICENSE.md) for more info.
