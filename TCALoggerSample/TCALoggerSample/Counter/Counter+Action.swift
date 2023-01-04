//
//  Counter+Action.swift
//  TCALoggerSample
//
//  Created by Yermukhanbet Yessen on 2023/01/03.
//

import ComposableArchitecture

extension Counter {
  public enum Action: Equatable {
    case increase
    case decrease
    case emojy(BackgroundChanger.Action)
    case openEmoji(Bool)
    case setNavigation(Bool)
  }
}
