// DO NOT EDIT.
// swift-format-ignore-file
// swiftlint:disable all
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/protobuf/unittest_mset_wire_format.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Protocol Buffers - Google's data interchange format
// Copyright 2008 Google Inc.  All rights reserved.
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

// Author: kenton@google.com (Kenton Varda)
//  Based on original Protocol Buffers design by
//  Sanjay Ghemawat, Jeff Dean, and others.
//
// This file contains messages for testing message_set_wire_format.

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

/// A message with message_set_wire_format.
struct Proto2WireformatUnittest_TestMessageSet: AppleSwiftProtobuf.ExtensibleMessage, Sendable {
  // AppleSwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the AppleSwiftProtobuf library for
  // methods supported on all messages.

  var unknownFields = AppleSwiftProtobuf.UnknownStorage()

  init() {}

  var _protobuf_extensionFieldValues = AppleSwiftProtobuf.ExtensionFieldValueSet()
}

struct Proto2WireformatUnittest_TestMessageSetWireFormatContainer: Sendable {
  // AppleSwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the AppleSwiftProtobuf library for
  // methods supported on all messages.

  var messageSet: Proto2WireformatUnittest_TestMessageSet {
    get {return _messageSet ?? Proto2WireformatUnittest_TestMessageSet()}
    set {_messageSet = newValue}
  }
  /// Returns true if `messageSet` has been explicitly set.
  var hasMessageSet: Bool {return self._messageSet != nil}
  /// Clears the value of `messageSet`. Subsequent reads from it will return its default value.
  mutating func clearMessageSet() {self._messageSet = nil}

  var unknownFields = AppleSwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _messageSet: Proto2WireformatUnittest_TestMessageSet? = nil
}

// MARK: - Code below here is support for the AppleSwiftProtobuf runtime.

fileprivate let _protobuf_package = "proto2_wireformat_unittest"

extension Proto2WireformatUnittest_TestMessageSet: AppleSwiftProtobuf.Message, AppleSwiftProtobuf._MessageImplementationBase, AppleSwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".TestMessageSet"
  static let _protobuf_nameMap = AppleSwiftProtobuf._NameMap()

  public var isInitialized: Bool {
    if !_protobuf_extensionFieldValues.isInitialized {return false}
    return true
  }

  mutating func decodeMessage<D: AppleSwiftProtobuf.Decoder>(decoder: inout D) throws {
    try decoder.decodeExtensionFieldsAsMessageSet(values: &_protobuf_extensionFieldValues, messageType: Proto2WireformatUnittest_TestMessageSet.self)
  }

  func traverse<V: AppleSwiftProtobuf.Visitor>(visitor: inout V) throws {
    try visitor.visitExtensionFieldsAsMessageSet(fields: _protobuf_extensionFieldValues, start: 4, end: 2147483647)
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Proto2WireformatUnittest_TestMessageSet, rhs: Proto2WireformatUnittest_TestMessageSet) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    if lhs._protobuf_extensionFieldValues != rhs._protobuf_extensionFieldValues {return false}
    return true
  }
}

extension Proto2WireformatUnittest_TestMessageSetWireFormatContainer: AppleSwiftProtobuf.Message, AppleSwiftProtobuf._MessageImplementationBase, AppleSwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".TestMessageSetWireFormatContainer"
  static let _protobuf_nameMap: AppleSwiftProtobuf._NameMap = [
    1: .standard(proto: "message_set"),
  ]

  public var isInitialized: Bool {
    if let v = self._messageSet, !v.isInitialized {return false}
    return true
  }

  mutating func decodeMessage<D: AppleSwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._messageSet) }()
      default: break
      }
    }
  }

  func traverse<V: AppleSwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._messageSet {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Proto2WireformatUnittest_TestMessageSetWireFormatContainer, rhs: Proto2WireformatUnittest_TestMessageSetWireFormatContainer) -> Bool {
    if lhs._messageSet != rhs._messageSet {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
