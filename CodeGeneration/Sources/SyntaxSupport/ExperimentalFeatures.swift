//===----------------------------------------------------------------------===//
//
// This source file is part of the Swift.org open source project
//
// Copyright (c) 2023 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
// See https://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//
//===----------------------------------------------------------------------===//

import SwiftSyntax

public enum ExperimentalFeature: String, CaseIterable {
  case referenceBindings
  case thenStatements
  case typedThrows
  case doExpressions
  case nonEscapableTypes
  case globalConcurrency

  /// The name of the feature, which is used in the doc comment.
  public var featureName: String {
    switch self {
    case .referenceBindings:
      return "reference bindings"
    case .thenStatements:
      return "'then' statements"
    case .typedThrows:
      return "typed throws"
    case .doExpressions:
      return "'do' expressions"
    case .nonEscapableTypes:
      return "NonEscableTypes"
    case .globalConcurrency:
      return "strict concurrency for globals"
    }
  }

  /// The token that represents the experimental feature case name.
  public var token: TokenSyntax {
    .identifier(rawValue)
  }
}
