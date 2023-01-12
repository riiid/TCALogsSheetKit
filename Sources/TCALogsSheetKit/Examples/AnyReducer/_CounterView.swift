//
//  _CounterView.swift
//  
//
//  Created by Yermukhanbet Yessen on 2023/01/02.
//

import ComposableArchitecture
import SwiftUI

// MARK: View

public struct _CounterView: View {

  @ObservedObject
  private var viewStore: _CounterViewStore

  private let store: _CounterStore

  public init(store: _CounterStore) {
    self.viewStore = ViewStore(store)
    self.store = store
  }

  public var body: some View {
    Text("Hello, _Counter!")
  }
}

// MARK: Store

public typealias _CounterStore = Store<
  _CounterState,
  _CounterAction
>

// MARK: ViewStore

public typealias _CounterViewStore = ViewStore<
  _CounterState,
  _CounterAction
>

// MARK: Preview

struct _CounterView_Previews: PreviewProvider {

  static var previews: some View {
    _CounterView(store: store)
      .previewLayout(.sizeThatFits)
  }

  static let store: _CounterStore = .init(
    initialState: _CounterState(),
    reducer: counterReducer,
    environment: _CounterEnvironment()
  )
}
