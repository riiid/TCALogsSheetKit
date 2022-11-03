//
//  CounterReducer.swift
//  
//
//  Created by Yessen Yermukhanbet on 2022/10/06.
//

import Foundation
import ComposableArchitecture

struct CounterEnvironment { }

let counterReducer = AnyReducer<CounterState, CounterAction, CounterEnvironment> { state, action, _ in
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
