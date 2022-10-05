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
  public func log(isDebug: Bool) -> Self {
    .init { state, action, environment in
      if isDebug {
        state.logs.append(.init(message: "\(action)"))
      }
      return self.run(&state, action, environment)
    }
  }
}
