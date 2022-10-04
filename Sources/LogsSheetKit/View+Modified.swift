//
//  View+Modified.swift
//
//  Created by Dongkyu Kim on 2022/06/30.
//  Copyright © 2022 Riiid Inc. All rights reserved.
//

import SwiftUI

extension View {
  func modified<Modified: View>(@ViewBuilder modification: (Self) -> Modified) -> some View {
    return modification(self)
  }
}
