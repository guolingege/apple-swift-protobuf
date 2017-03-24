// Sources/SwiftProtobuf/Google_Protobuf_Any+Extensions.swift - Well-known Any type
//
// Copyright (c) 2014 - 2017 Apple Inc. and the project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See LICENSE.txt for license information:
// https://github.com/apple/swift-protobuf/blob/master/LICENSE.txt
//
// -----------------------------------------------------------------------------
///
/// Extends the `Google_Protobuf_Any` type with various custom behaviors.
///
// -----------------------------------------------------------------------------

import Foundation

public extension Google_Protobuf_Any {
  /// Initialize an Any object from the provided message.
  ///
  /// This corresponds to the `pack` operation in the C++ API.
  ///
  /// Unlike the C++ implementation, the message is not immediately
  /// serialized; it is merely stored until the Any object itself
  /// needs to be serialized.  This design avoids unnecessary
  /// decoding/recoding when writing JSON format.
  ///
  /// - Parameters:
  ///   - partial: The binary serialization format requires all `required` fields
  ///     be present; when `partial` is `false`, `BinaryEncodingError.missingRequiredFields`
  ///     is thrown if any were missing. When `partial` is `true`, then partial
  ///     messages are allowed, and `Message.isRequired` is not checked.
  ///   - typePrefix: The prefix to be used when building the `type_url`.  Defaults to
  ///     "type.googleapis.com".
  /// - Throws: `BinaryEncodingError.missingRequiredFields` if `partial` is false and
  ///     `message` wasn't fully initialized.
  public init(message: Message, partial: Bool = false, typePrefix: String = defaultTypePrefix) throws {
    if !partial && !message.isInitialized {
      throw BinaryEncodingError.missingRequiredFields
    }
    self.init()
    typeURL = buildTypeURL(forMessage:message, typePrefix: typePrefix)
    _storage.state = .message(message)
  }


  /// Decode an Any object from Protobuf Text Format.
  public init(textFormatString: String, extensions: ExtensionMap? = nil) throws {
    self.init()
    if !textFormatString.isEmpty {
      if let data = textFormatString.data(using: String.Encoding.utf8) {
        try data.withUnsafeBytes { (bytes: UnsafePointer<UInt8>) in
          var textDecoder = try TextFormatDecoder(messageType: Google_Protobuf_Any.self,
                                                  utf8Pointer: bytes,
                                                  count: data.count,
                                                  extensions: extensions)
          try decodeTextFormat(decoder: &textDecoder)
          if !textDecoder.complete {
            throw TextFormatDecodingError.trailingGarbage
          }
        }
      }
    }
  }

  /// Check if this Any message contains the given type. The check is
  /// done by looking at the passed `Message.Type` and the `typeURL`
  /// of this message.
  public func isA<M: Message>(_ type: M.Type) -> Bool {
    return _storage.isA(type)
  }

  public var hashValue: Int {
    return _storage.hashValue
  }

}

extension Google_Protobuf_Any {
  internal func textTraverse(visitor: inout TextFormatEncodingVisitor) {
    _storage.textTraverse(visitor: &visitor)
    try! unknownFields.traverse(visitor: &visitor)
  }
}


extension Google_Protobuf_Any: _CustomJSONCodable {

  // Custom text format decoding support for Any objects.
  // (Note: This is not a part of any protocol; it's invoked
  // directly from TextFormatDecoder whenever it sees an attempt
  // to decode an Any object)
  internal mutating func decodeTextFormat(decoder: inout TextFormatDecoder) throws {
    // First, check if this uses the "verbose" Any encoding.
    // If it does, and we have the type available, we can
    // eagerly decode the contained Message object.
    if let url = try decoder.scanner.nextOptionalAnyURL() {
      try _uniqueStorage().decodeTextFormat(typeURL: url, decoder: &decoder)
    } else {
      // This is not using the specialized encoding, so we can use the
      // standard path to decode the binary value.
      try decodeMessage(decoder: &decoder)
    }
  }

  internal func encodedJSONString() throws -> String {
    return try _storage.encodedJSONString()
  }

  internal mutating func decodeJSON(from decoder: inout JSONDecoder) throws {
    try _uniqueStorage().decodeJSON(from: &decoder)
  }

}