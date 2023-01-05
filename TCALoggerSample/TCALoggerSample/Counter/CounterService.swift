//
//  CounterService.swift
//  TCALoggerSample
//
//  Created by Yermukhanbet Yessen on 2023/01/03.
//

import Dependencies

public protocol CounterService {
}

// MARK: - Live

public final class CounterServiceLive: CounterService {
  public init() {
  }
}

// MARK: - Mock

public final class CounterServiceMock: CounterService {
  public init() {
  }
}

// MARK: - DependencyKey

enum CounterKey: DependencyKey {
  static let liveValue: CounterService = CounterServiceLive()
  static let previewValue: CounterService = CounterServiceMock()
  static let testValue: CounterService = CounterServiceMock()
}

// MARK: - DependencyValues

public extension DependencyValues {
  var serviceCounter: CounterService {
    get { self[CounterKey.self] }
    set { self[CounterKey.self] = newValue }
  }
}
