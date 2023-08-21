//
//  EmojiPickerView.swift
//  TCALoggerSample
//
//  Created by Yermukhanbet Yessen on 2023/01/04.
//

import SwiftUI

import ComposableArchitecture

// MARK: - View

public struct EmojiPickerView: View {
  @ObservedObject
  private var viewStore: ViewStoreOf<EmojiPicker>
  private let store: StoreOf<EmojiPicker>

  public init(store: StoreOf<EmojiPicker>) {
    self.viewStore = .init(store)
    self.store = store
  }

  public var body: some View {
    VStack(spacing: 20) {
      if let currentEmojie = viewStore.currentEmoji {
        Text("\(currentEmojie.rawValue)")
      }
      Button("change emoji") {
        viewStore.send(.changeEmoji)
      }
    }
  }
}

// MARK: - Preview

struct EmojiPicker_Previews: PreviewProvider {
  static var previews: some View {
    EmojiPickerView(store: store)
      .previewLayout(.sizeThatFits)
  }

  static let store: StoreOf<EmojiPicker> = .init(
    initialState: .init()
  ) {
    EmojiPicker()
  }
}
