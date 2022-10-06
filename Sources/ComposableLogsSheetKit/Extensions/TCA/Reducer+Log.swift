//
//  Reducer+Log.swift
//  
//
//  Created by Yessen Yermukhanbet on 2022/10/05.
//  Copyright © 2022 Riiid Inc. All rights reserved.
//

import Foundation
import ComposableArchitecture

extension Reducer where State: LoggableState {
  /// Saves each action  run through the reducer as the log message if debug build configuration is on
  /// - Parameters:
  ///   - isDebug: is debug configuration on
  public func log(isDebug: Bool) -> Self {
    .init { state, action, environment in
      if isDebug {
        state.logs.append(.init(message: "\(action)"))
      }
      return self.run(&state, action, environment)
    }
  }

  /// Saves the custom log message if debug build configuration is on
  /// - Parameters:
  ///   - isDebug: is debug configuration on
  ///   - message: custom log message
  public func log(
    isDebug: Bool,
    with message: @escaping ((Action) -> String)
  ) -> Self {
    .init { state, action, environment in
      if isDebug {
        state.logs.append(.init(message: message(action)))
      }
      return self.run(&state, action, environment)
    }
  }
}
