//
//  CounterReducer.swift
//  
//
//  Created by Yessen Yermukhanbet on 2022/10/06.
//

import ComposableArchitecture
import Foundation
import LogsSheetKit

struct Counter: Reducer {
  struct State: Equatable {
    var logs: [ActionLog] = []
    var count = 0
  }

  enum Action: Equatable {
    case increase
    case decrease

  }

  var body: some Reducer<State, Action> {
    Reduce { (state, action) in
      switch action {
        case .increase:
          state.count = state.count + 1
          return .none
        case .decrease:
          state.count = state.count - 1
          return .none
        }
    }
    self.log(isDebug: true)
  }
}
