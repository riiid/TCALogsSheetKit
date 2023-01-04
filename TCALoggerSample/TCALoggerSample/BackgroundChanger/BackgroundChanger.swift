//
//  BackgroundChanger.swift
//  TCALoggerSample
//
//  Created by Yermukhanbet Yessen on 2023/01/04.
//

import ComposableArchitecture
import Dependencies

public struct BackgroundChanger: ReducerProtocol {
  @Dependency(\.serviceBackgroundChanger) private var serviceBackgroundChanger
  
  public init() {}
  
  public var body: some ReducerProtocol<State, Action> {
    Reduce { state, action in
      switch action {
      case .changeEmojie:
        let randomIndex: Int = Int.random(in: 0..<state.emojies.count)
        let randomEmoji = RiiidEmojies(rawValue: state.emojies[randomIndex])
        state.currentEmoji = randomEmoji
        return .none
      }
    }
  }
}
