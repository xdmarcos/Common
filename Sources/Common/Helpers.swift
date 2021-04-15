//
//  Helpers.swift
//  Common
//
//  Created by xdmgzdev on 25/03/2021.
//

import Foundation

public func DLog(_ message: String, function: String = #function, line: Int = #line) {
  #if DEBUG
  print(" 🔎 \(function):\(line) - \(message)")
  #endif
}

@propertyWrapper
public struct Localized {
  var value: String = ""

  public init(wrappedValue value: String) {
    self.wrappedValue = value
  }

  public var wrappedValue: String {
    get { value }
    set { value = newValue.localized }
  }
}
