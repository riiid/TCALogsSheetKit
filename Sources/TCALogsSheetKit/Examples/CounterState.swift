//
//  CounterState.swift
//  ComposableLogsSheetKit
//
//  Created by Yessen Yermukhanbet on 2022/10/06.
//

import Foundation
import ComposableArchitecture
import LogsSheetKit

struct CounterState: Equatable {
  var logs: [ActionLog] = []
  var count = 0
}
