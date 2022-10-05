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
  public func log() -> Self {
    .init { state, action, environment in
      #if DEBUG || STG
      state.logs.append(.init(message: "\(action)"))
      #endif
      return self.run(&state, action, environment)
    }
  }
}
