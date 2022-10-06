//
//  LoggableStateTests.swift
//  
//
//  Created by Yessen Yermukhanbet on 2022/10/05.
//  Copyright © 2022 Riiid Inc. All rights reserved.
//

import XCTest
import LogsSheetKit
@testable import ComposableLogsSheetKit

final class LoggableStateTests: XCTestCase {

  override func setUp() {
    super.setUp()
    GlobalLogs.shared.logs = [] // Clean up before each test
  }

  private struct StubState: LoggableState { }

  func testLoggableStateAtTheBeginningLogsEmpty() {
    let stub: StubState = StubState()
    XCTAssertTrue(stub.logs.count == 0)
  }

  func testLoggableStateAppendsLogs() {
    var stub: StubState = StubState()

    let logs: [ActionLog] = [
      ActionLog(message: "stub"),
      ActionLog(message: "stub"),
      ActionLog(message: "stub"),
    ]

    for log in logs {
      stub.logs.append(log)
    }

    XCTAssertTrue(stub.logs.count == logs.count)
  }
}
