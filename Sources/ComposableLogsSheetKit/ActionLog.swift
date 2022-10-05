//
//  ActionLog.swift
//
//
//  Created by Yessen Yermukhanbet on 2022/10/04.
//  Copyright © 2022 Riiid Inc. All rights reserved.
//

import Foundation

public struct ActionLog: Equatable, Identifiable {
  public var id: UUID = .init()
  public var message: String
  public var timeStamp: Date = Date()

  public init(message: String) {
    self.message = message
  }
}
