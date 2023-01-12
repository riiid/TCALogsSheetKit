//
//  _CounterReducer.swift
//  
//
//  Created by Yermukhanbet Yessen on 2023/01/02.
//

import Foundation
import ComposableArchitecture

struct CounterEnvironment { }

let counterReducer = AnyReducer<_CounterState, _CounterAction, _CounterEnvironment> { state, action, _ in
  switch action {
  case .increase:
    state.count = state.count + 1
    return .none
  case .decrease:
    state.count = state.count - 1
    return .none
  }
}
  .log(isDebug: true)
