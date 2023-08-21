//
//  CounterView.swift
//  
//
//  Created by Yessen Yermukhanbet on 2022/10/06.
//

import SwiftUI
import ComposableArchitecture
import LogsSheetKit

struct CounterView: View {
  let store: StoreOf<Counter>

  @State private var isPresented: Bool = false

  var body: some View {
    WithViewStore(self.store) { store in
      NavigationView {
        VStack {
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
            isPresented = true
          } label: {
            Text("open LogsSheet")
          }
        }
        .sheet(isPresented: $isPresented) {
          LogsSheet()
        }
      }
    }
  }
}

struct CounterView_Previews: PreviewProvider {
  static var previews: some View {
    CounterView(
      store: .init(
        initialState: Counter.State(),
        reducer: {
        Counter()
      })
    )
  }
}
