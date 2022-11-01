//
//  CounterReducer.swift
//  
//
//  Created by Yessen Yermukhanbet on 2022/10/06.
//

import ComposableArchitecture
import Foundation
import LogsSheetKit

struct Counter: ReducerProtocol {
  struct State: Equatable {
    var logs: [ActionLog] = []
    var count = 0
  }

  enum Action: Equatable {
    case increase
    case decrease

  }

  func reduce(into state: inout State, action: Action) -> EffectTask<Action> {
    switch action {
    case .increase:
      state.count = state.count + 1
      return .none
    case .decrease:
      state.count = state.count - 1
      return .none
    }
  }
}
