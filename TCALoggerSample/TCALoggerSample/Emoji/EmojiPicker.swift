//
//  EmojiPicker.swift
//  TCALoggerSample
//
//  Created by Yermukhanbet Yessen on 2023/01/04.
//

import ComposableArchitecture
import Dependencies

public struct EmojiPicker: ReducerProtocol {
  @Dependency(\.serviceBackgroundChanger) private var serviceBackgroundChanger
  
  public init() {}
  
  public var body: some ReducerProtocol<State, Action> {
    Reduce { state, action in
      switch action {
      case .changeEmoji:
        let randomIndex: Int = Int.random(in: 0..<state.emojis.count)
        let randomEmoji = RiiidEmojis(rawValue: state.emojis[randomIndex])
        state.currentEmoji = randomEmoji
        return .none
      }
    }
  }
}
