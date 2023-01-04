//
//  Counter.swift
//  TCALoggerSample
//
//  Created by Yermukhanbet Yessen on 2023/01/03.
//

import ComposableArchitecture
import Dependencies
import TCALogsSheetKit

public struct Counter: ReducerProtocol {
  @Dependency(\.serviceCounter) private var serviceCounter

  public init() {}

  public var body: some ReducerProtocol<State, Action> {
    Reduce { state, action in
      switch action {
      case .increase:
        state.count = state.count + 1
        return .none

      case .decrease:
        state.count = state.count - 1
        return .none

      case .openEmoji(let isOpen):
        state.moveToEmoji = isOpen
        return .none

      case .emojy:
        return .none

      case .setNavigation(let isPresent):
        if isPresent {
          state.emoji = .init()
        } else {
          state.emoji = nil
        }
        state.moveToEmoji = isPresent
        return .none
      }
    }
    .ifLet(\.emoji, action: /Counter.Action.emojy, then: {
      BackgroundChanger()
    })
    .log(isDebug: true)
  }
}
