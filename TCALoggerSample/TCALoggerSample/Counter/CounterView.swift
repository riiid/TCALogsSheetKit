//
//  CounterView.swift
//  TCALoggerSample
//
//  Created by Yermukhanbet Yessen on 2023/01/03.
//

import SwiftUI

import ComposableArchitecture
import LogsSheetKit
import TCALogsSheetKit

// MARK: - View

public struct CounterView: View {
  let store: StoreOf<Counter>

  @State private var isPresented: Bool = false

  public var body: some View {
    WithViewStore(self.store) { store in
      NavigationView {
        VStack(spacing: 20) {
          Spacer()
          Text("\(store.count)")
          HStack {
            Button {
              store.send(.increase)
            } label: {
              Text("+")
            }
            Button {
              store.send(.decrease)
            } label: {
              Text("-")
            }
          }
          Spacer()

          Button {
            store.send(.setNavigation(true))
          } label: {
            Text("open Emoji")
          }
          .padding(.bottom, 20)

          Button {
            isPresented = true
          } label: {
            Text("open LogsSheet")
          }
        }
        .sheet(isPresented: $isPresented) {
          LogsSheet()
        }
        .background(
          NavigationLink(
            destination: IfLetStore(
              self.store.scope(
                state: \.emoji,
                action: Counter.Action.emoji
              ),
              then: EmojiPickerView.init(store:)
            ),
            isActive: store.binding(
              get: \.moveToEmoji,
              send: Counter.Action.setNavigation)
          ) {
              EmptyView()
          }
        )
      }
    }
  }
}

// MARK: - Preview

struct CounterView_Previews: PreviewProvider {
  static var previews: some View {
    CounterView(store: Store(
      initialState: Counter.State()
    ) {
      Counter()
    })
  }
}
