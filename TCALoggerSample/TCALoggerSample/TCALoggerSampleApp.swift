//
//  TCALoggerSampleApp.swift
//  TCALoggerSample
//
//  Created by Yermukhanbet Yessen on 2023/01/03.
//

import SwiftUI

import ComposableArchitecture

@main
struct TCALoggerSampleApp: App {
    var body: some Scene {
        WindowGroup {
          CounterView(store: Store(initialState: Counter.State(), reducer: Counter()))
        }
    }
}
