//
//  EmojiPicker+State.swift
//  TCALoggerSample
//
//  Created by Yermukhanbet Yessen on 2023/01/04.
//

import ComposableArchitecture

extension EmojiPicker {
  public struct State: Equatable {
    var currentEmoji: RiiidEmojis?
    var emojis: [String]

    public init(currentEmoji: RiiidEmojis? = nil) {
      self.currentEmoji = currentEmoji
      self.emojis = RiiidEmojis.allCases.map { $0.rawValue }
    }
  }
}

public enum RiiidEmojis: String, Equatable, CaseIterable {
  case 🧐
  case 🥸
  case 🤩
}
