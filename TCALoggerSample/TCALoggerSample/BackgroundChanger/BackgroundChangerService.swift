//
//  BackgroundChangerService.swift
//  TCALoggerSample
//
//  Created by Yermukhanbet Yessen on 2023/01/04.
//

import Dependencies

public protocol BackgroundChangerService {
}

// MARK: - Live

public final class BackgroundChangerServiceLive: BackgroundChangerService {
  public init() {
  }
}

// MARK: - Mock

public final class BackgroundChangerServiceMock: BackgroundChangerService {
  public init() {
  }
}

// MARK: - DependencyKey

enum BackgroundChangerKey: DependencyKey {
  static let liveValue: BackgroundChangerService = BackgroundChangerServiceLive()
  static let previewValue: BackgroundChangerService = BackgroundChangerServiceMock()
  static let testValue: BackgroundChangerService = BackgroundChangerServiceMock()
}

// MARK: - DependencyValues

public extension DependencyValues {
  var serviceBackgroundChanger: BackgroundChangerService {
    get { self[BackgroundChangerKey.self] }
    set { self[BackgroundChangerKey.self] = newValue }
  }
}
