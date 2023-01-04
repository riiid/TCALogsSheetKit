//
//  BackgroundChangerView.swift
//  TCALoggerSample
//
//  Created by Yermukhanbet Yessen on 2023/01/04.
//

import SwiftUI

import ComposableArchitecture

// MARK: - View

public struct BackgroundChangerView: View {
  @ObservedObject
  private var viewStore: ViewStoreOf<BackgroundChanger>
  private let store: StoreOf<BackgroundChanger>

  public init(store: StoreOf<BackgroundChanger>) {
    self.viewStore = .init(store)
    self.store = store
  }

  public var body: some View {
    VStack(spacing: 20) {
      if let currentEmojie = viewStore.currentEmoji {
        Text("\(currentEmojie.rawValue)")
      }
      Button("change emoji") {
        viewStore.send(.changeEmojie)
      }
    }
  }
}

// MARK: - Preview

struct BackgroundChangerView_Previews: PreviewProvider {
  static var previews: some View {
    BackgroundChangerView(store: store)
      .previewLayout(.sizeThatFits)
  }

  static let store: StoreOf<BackgroundChanger> = .init(
    initialState: .init(),
    reducer: BackgroundChanger()
  )
}
