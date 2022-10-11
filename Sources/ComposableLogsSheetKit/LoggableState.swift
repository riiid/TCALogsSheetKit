//
//  File.swift
//  
//
//  Created by Yessen Yermukhanbet on 2022/10/05.
//  Copyright © 2022 Riiid Inc. All rights reserved.
//

import Foundation
import LogsSheetKit

public protocol LoggableState: Equatable {
  var logs: [ActionLog] { get set }
}
