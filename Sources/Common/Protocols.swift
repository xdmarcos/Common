//
//  File.swift
//  
//
//  Created by xdmgzdev on 29/03/2021.
//

import Foundation

public protocol ViewRepresentable {
  var description: String { get }
}

extension ViewRepresentable {
  var description: String {
    "A view state representation of \(String(describing: self))"
  }
}
