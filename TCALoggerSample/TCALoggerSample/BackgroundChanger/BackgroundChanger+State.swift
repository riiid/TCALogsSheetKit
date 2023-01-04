//
//  BackgroundChanger+State.swift
//  TCALoggerSample
//
//  Created by Yermukhanbet Yessen on 2023/01/04.
//

import ComposableArchitecture

extension BackgroundChanger {
  public struct State: Equatable {
    var currentEmoji: RiiidEmojies?
    var emojies: [String]

    public init(currentEmojie: RiiidEmojies? = nil) {
      self.currentEmoji = currentEmojie
      self.emojies = RiiidEmojies.allCases.map { $0.rawValue }
    }
  }
}

public enum RiiidEmojies: String, Equatable, CaseIterable {
  case 🧐
  case 🥸
  case 🤩
}
