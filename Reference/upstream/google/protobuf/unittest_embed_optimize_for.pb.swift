// DO NOT EDIT.
// swift-format-ignore-file
// swiftlint:disable all
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/protobuf/unittest_embed_optimize_for.proto
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
// A proto file which imports a proto file that uses optimize_for = CODE_SIZE.

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

struct ProtobufUnittest_TestEmbedOptimizedForSize: Sendable {
  // AppleSwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the AppleSwiftProtobuf library for
  // methods supported on all messages.

  /// Test that embedding a message which has optimize_for = CODE_SIZE into
  /// one optimized for speed works.
  var optionalMessage: ProtobufUnittest_TestOptimizedForSize {
    get {return _optionalMessage ?? ProtobufUnittest_TestOptimizedForSize()}
    set {_optionalMessage = newValue}
  }
  /// Returns true if `optionalMessage` has been explicitly set.
  var hasOptionalMessage: Bool {return self._optionalMessage != nil}
  /// Clears the value of `optionalMessage`. Subsequent reads from it will return its default value.
  mutating func clearOptionalMessage() {self._optionalMessage = nil}

  var repeatedMessage: [ProtobufUnittest_TestOptimizedForSize] = []

  var unknownFields = AppleSwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _optionalMessage: ProtobufUnittest_TestOptimizedForSize? = nil
}

// MARK: - Code below here is support for the AppleSwiftProtobuf runtime.

fileprivate let _protobuf_package = "protobuf_unittest"

extension ProtobufUnittest_TestEmbedOptimizedForSize: AppleSwiftProtobuf.Message, AppleSwiftProtobuf._MessageImplementationBase, AppleSwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".TestEmbedOptimizedForSize"
  static let _protobuf_nameMap: AppleSwiftProtobuf._NameMap = [
    1: .standard(proto: "optional_message"),
    2: .standard(proto: "repeated_message"),
  ]

  public var isInitialized: Bool {
    if let v = self._optionalMessage, !v.isInitialized {return false}
    if !AppleSwiftProtobuf.Internal.areAllInitialized(self.repeatedMessage) {return false}
    return true
  }

  mutating func decodeMessage<D: AppleSwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._optionalMessage) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.repeatedMessage) }()
      default: break
      }
    }
  }

  func traverse<V: AppleSwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._optionalMessage {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    if !self.repeatedMessage.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.repeatedMessage, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: ProtobufUnittest_TestEmbedOptimizedForSize, rhs: ProtobufUnittest_TestEmbedOptimizedForSize) -> Bool {
    if lhs._optionalMessage != rhs._optionalMessage {return false}
    if lhs.repeatedMessage != rhs.repeatedMessage {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
