//
//  Counter+State.swift
//  TCALoggerSample
//
//  Created by Yermukhanbet Yessen on 2023/01/03.
//

import ComposableArchitecture

extension Counter {
  public struct State: Equatable {
    var count: Int = 0
    var emoji: BackgroundChanger.State?
    var moveToEmoji: Bool = false
  }
}
