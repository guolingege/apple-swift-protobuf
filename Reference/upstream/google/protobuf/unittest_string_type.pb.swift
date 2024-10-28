// DO NOT EDIT.
// swift-format-ignore-file
// swiftlint:disable all
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/protobuf/unittest_string_type.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Protocol Buffers - Google's data interchange format
// Copyright 2008 Google Inc.  All rights reserved.
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

import Foundation
import AppleSwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of AppleSwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: AppleSwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: AppleSwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct ProtobufUnittest_EntryProto: @unchecked Sendable {
  // AppleSwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the AppleSwiftProtobuf library for
  // methods supported on all messages.

  var value: Data {
    get {return _value ?? Data()}
    set {_value = newValue}
  }
  /// Returns true if `value` has been explicitly set.
  var hasValue: Bool {return self._value != nil}
  /// Clears the value of `value`. Subsequent reads from it will return its default value.
  mutating func clearValue() {self._value = nil}

  var unknownFields = AppleSwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _value: Data? = nil
}

// MARK: - Code below here is support for the AppleSwiftProtobuf runtime.

fileprivate let _protobuf_package = "protobuf_unittest"

extension ProtobufUnittest_EntryProto: AppleSwiftProtobuf.Message, AppleSwiftProtobuf._MessageImplementationBase, AppleSwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".EntryProto"
  static let _protobuf_nameMap: AppleSwiftProtobuf._NameMap = [
    3: .same(proto: "value"),
  ]

  mutating func decodeMessage<D: AppleSwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 3: try { try decoder.decodeSingularBytesField(value: &self._value) }()
      default: break
      }
    }
  }

  func traverse<V: AppleSwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._value {
      try visitor.visitSingularBytesField(value: v, fieldNumber: 3)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: ProtobufUnittest_EntryProto, rhs: ProtobufUnittest_EntryProto) -> Bool {
    if lhs._value != rhs._value {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
