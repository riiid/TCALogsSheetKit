//
//  _CounterState.swift
//  
//
//  Created by Yermukhanbet Yessen on 2023/01/02.
//
import Foundation
import ComposableArchitecture
import LogsSheetKit

public struct _CounterState: Equatable {
  public var count: Int

  public init() {
    self.count = 0
  }
}
