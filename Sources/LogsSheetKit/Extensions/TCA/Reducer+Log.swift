//
//  Reducer+Log.swift
//  
//
//  Created by Yessen Yermukhanbet on 2022/10/05.
//

import Foundation
import ComposableArchitecture

extension Reducer where State: LoggableState {
  func log() -> Self {
    .init { state, action, environment in
      #if DEBUG || STG
      state.logs.append(.init(message: "\(action)"))
      #endif
      return self.run(&state, action, environment)
    }
  }
}

protocol LoggableState: Equatable {
  var logs: [ActionLog] { get set }
}
