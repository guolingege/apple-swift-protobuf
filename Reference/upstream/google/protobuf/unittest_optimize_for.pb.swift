// DO NOT EDIT.
// swift-format-ignore-file
// swiftlint:disable all
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/protobuf/unittest_optimize_for.proto
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
// A proto file which uses optimize_for = CODE_SIZE.

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

struct ProtobufUnittest_TestOptimizedForSize: AppleSwiftProtobuf.ExtensibleMessage, Sendable {
  // AppleSwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the AppleSwiftProtobuf library for
  // methods supported on all messages.

  var i: Int32 {
    get {return _i ?? 0}
    set {_i = newValue}
  }
  /// Returns true if `i` has been explicitly set.
  var hasI: Bool {return self._i != nil}
  /// Clears the value of `i`. Subsequent reads from it will return its default value.
  mutating func clearI() {self._i = nil}

  var msg: ProtobufUnittest_ForeignMessage {
    get {return _msg ?? ProtobufUnittest_ForeignMessage()}
    set {_msg = newValue}
  }
  /// Returns true if `msg` has been explicitly set.
  var hasMsg: Bool {return self._msg != nil}
  /// Clears the value of `msg`. Subsequent reads from it will return its default value.
  mutating func clearMsg() {self._msg = nil}

  var foo: ProtobufUnittest_TestOptimizedForSize.OneOf_Foo? = nil

  var integerField: Int32 {
    get {
      if case .integerField(let v)? = foo {return v}
      return 0
    }
    set {foo = .integerField(newValue)}
  }

  var stringField: String {
    get {
      if case .stringField(let v)? = foo {return v}
      return String()
    }
    set {foo = .stringField(newValue)}
  }

  var unknownFields = AppleSwiftProtobuf.UnknownStorage()

  enum OneOf_Foo: Equatable, Sendable {
    case integerField(Int32)
    case stringField(String)

  }

  init() {}

  var _protobuf_extensionFieldValues = AppleSwiftProtobuf.ExtensionFieldValueSet()
  fileprivate var _i: Int32? = nil
  fileprivate var _msg: ProtobufUnittest_ForeignMessage? = nil
}

struct ProtobufUnittest_TestRequiredOptimizedForSize: Sendable {
  // AppleSwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the AppleSwiftProtobuf library for
  // methods supported on all messages.

  var x: Int32 {
    get {return _x ?? 0}
    set {_x = newValue}
  }
  /// Returns true if `x` has been explicitly set.
  var hasX: Bool {return self._x != nil}
  /// Clears the value of `x`. Subsequent reads from it will return its default value.
  mutating func clearX() {self._x = nil}

  var unknownFields = AppleSwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _x: Int32? = nil
}

struct ProtobufUnittest_TestOptionalOptimizedForSize: Sendable {
  // AppleSwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the AppleSwiftProtobuf library for
  // methods supported on all messages.

  var o: ProtobufUnittest_TestRequiredOptimizedForSize {
    get {return _o ?? ProtobufUnittest_TestRequiredOptimizedForSize()}
    set {_o = newValue}
  }
  /// Returns true if `o` has been explicitly set.
  var hasO: Bool {return self._o != nil}
  /// Clears the value of `o`. Subsequent reads from it will return its default value.
  mutating func clearO() {self._o = nil}

  var unknownFields = AppleSwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _o: ProtobufUnittest_TestRequiredOptimizedForSize? = nil
}

// MARK: - Extension support defined in unittest_optimize_for.proto.

// MARK: - Extension Properties

// Swift Extensions on the extended Messages to add easy access to the declared
// extension fields. The names are based on the extension field name from the proto
// declaration. To avoid naming collisions, the names are prefixed with the name of
// the scope where the extend directive occurs.

extension ProtobufUnittest_TestOptimizedForSize {

  var ProtobufUnittest_TestOptimizedForSize_testExtension: Int32 {
    get {return getExtensionValue(ext: ProtobufUnittest_TestOptimizedForSize.Extensions.test_extension) ?? 0}
    set {setExtensionValue(ext: ProtobufUnittest_TestOptimizedForSize.Extensions.test_extension, value: newValue)}
  }
  /// Returns true if extension `ProtobufUnittest_TestOptimizedForSize.Extensions.test_extension`
  /// has been explicitly set.
  var hasProtobufUnittest_TestOptimizedForSize_testExtension: Bool {
    return hasExtensionValue(ext: ProtobufUnittest_TestOptimizedForSize.Extensions.test_extension)
  }
  /// Clears the value of extension `ProtobufUnittest_TestOptimizedForSize.Extensions.test_extension`.
  /// Subsequent reads from it will return its default value.
  mutating func clearProtobufUnittest_TestOptimizedForSize_testExtension() {
    clearExtensionValue(ext: ProtobufUnittest_TestOptimizedForSize.Extensions.test_extension)
  }

  var ProtobufUnittest_TestOptimizedForSize_testExtension2: ProtobufUnittest_TestRequiredOptimizedForSize {
    get {return getExtensionValue(ext: ProtobufUnittest_TestOptimizedForSize.Extensions.test_extension2) ?? ProtobufUnittest_TestRequiredOptimizedForSize()}
    set {setExtensionValue(ext: ProtobufUnittest_TestOptimizedForSize.Extensions.test_extension2, value: newValue)}
  }
  /// Returns true if extension `ProtobufUnittest_TestOptimizedForSize.Extensions.test_extension2`
  /// has been explicitly set.
  var hasProtobufUnittest_TestOptimizedForSize_testExtension2: Bool {
    return hasExtensionValue(ext: ProtobufUnittest_TestOptimizedForSize.Extensions.test_extension2)
  }
  /// Clears the value of extension `ProtobufUnittest_TestOptimizedForSize.Extensions.test_extension2`.
  /// Subsequent reads from it will return its default value.
  mutating func clearProtobufUnittest_TestOptimizedForSize_testExtension2() {
    clearExtensionValue(ext: ProtobufUnittest_TestOptimizedForSize.Extensions.test_extension2)
  }

}

// MARK: - File's ExtensionMap: ProtobufUnittest_UnittestOptimizeFor_Extensions

/// A `AppleSwiftProtobuf.SimpleExtensionMap` that includes all of the extensions defined by
/// this .proto file. It can be used any place an `AppleSwiftProtobuf.ExtensionMap` is needed
/// in parsing, or it can be combined with other `AppleSwiftProtobuf.SimpleExtensionMap`s to create
/// a larger `AppleSwiftProtobuf.SimpleExtensionMap`.
let ProtobufUnittest_UnittestOptimizeFor_Extensions: AppleSwiftProtobuf.SimpleExtensionMap = [
  ProtobufUnittest_TestOptimizedForSize.Extensions.test_extension,
  ProtobufUnittest_TestOptimizedForSize.Extensions.test_extension2
]

// Extension Objects - The only reason these might be needed is when manually
// constructing a `SimpleExtensionMap`, otherwise, use the above _Extension Properties_
// accessors for the extension fields on the messages directly.

extension ProtobufUnittest_TestOptimizedForSize {
  enum Extensions {
    static let test_extension = AppleSwiftProtobuf.MessageExtension<AppleSwiftProtobuf.OptionalExtensionField<AppleSwiftProtobuf.ProtobufInt32>, ProtobufUnittest_TestOptimizedForSize>(
      _protobuf_fieldNumber: 1234,
      fieldName: "protobuf_unittest.TestOptimizedForSize.test_extension"
    )

    static let test_extension2 = AppleSwiftProtobuf.MessageExtension<AppleSwiftProtobuf.OptionalMessageExtensionField<ProtobufUnittest_TestRequiredOptimizedForSize>, ProtobufUnittest_TestOptimizedForSize>(
      _protobuf_fieldNumber: 1235,
      fieldName: "protobuf_unittest.TestOptimizedForSize.test_extension2"
    )
  }
}

// MARK: - Code below here is support for the AppleSwiftProtobuf runtime.

fileprivate let _protobuf_package = "protobuf_unittest"

extension ProtobufUnittest_TestOptimizedForSize: AppleSwiftProtobuf.Message, AppleSwiftProtobuf._MessageImplementationBase, AppleSwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".TestOptimizedForSize"
  static let _protobuf_nameMap: AppleSwiftProtobuf._NameMap = [
    1: .same(proto: "i"),
    19: .same(proto: "msg"),
    2: .standard(proto: "integer_field"),
    3: .standard(proto: "string_field"),
  ]

  public var isInitialized: Bool {
    if !_protobuf_extensionFieldValues.isInitialized {return false}
    return true
  }

  mutating func decodeMessage<D: AppleSwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt32Field(value: &self._i) }()
      case 2: try {
        var v: Int32?
        try decoder.decodeSingularInt32Field(value: &v)
        if let v = v {
          if self.foo != nil {try decoder.handleConflictingOneOf()}
          self.foo = .integerField(v)
        }
      }()
      case 3: try {
        var v: String?
        try decoder.decodeSingularStringField(value: &v)
        if let v = v {
          if self.foo != nil {try decoder.handleConflictingOneOf()}
          self.foo = .stringField(v)
        }
      }()
      case 19: try { try decoder.decodeSingularMessageField(value: &self._msg) }()
      case 1000..<536870912:
        try { try decoder.decodeExtensionField(values: &_protobuf_extensionFieldValues, messageType: ProtobufUnittest_TestOptimizedForSize.self, fieldNumber: fieldNumber) }()
      default: break
      }
    }
  }

  func traverse<V: AppleSwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._i {
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 1)
    } }()
    switch self.foo {
    case .integerField?: try {
      guard case .integerField(let v)? = self.foo else { preconditionFailure() }
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 2)
    }()
    case .stringField?: try {
      guard case .stringField(let v)? = self.foo else { preconditionFailure() }
      try visitor.visitSingularStringField(value: v, fieldNumber: 3)
    }()
    case nil: break
    }
    try { if let v = self._msg {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 19)
    } }()
    try visitor.visitExtensionFields(fields: _protobuf_extensionFieldValues, start: 1000, end: 536870912)
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: ProtobufUnittest_TestOptimizedForSize, rhs: ProtobufUnittest_TestOptimizedForSize) -> Bool {
    if lhs._i != rhs._i {return false}
    if lhs._msg != rhs._msg {return false}
    if lhs.foo != rhs.foo {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    if lhs._protobuf_extensionFieldValues != rhs._protobuf_extensionFieldValues {return false}
    return true
  }
}

extension ProtobufUnittest_TestRequiredOptimizedForSize: AppleSwiftProtobuf.Message, AppleSwiftProtobuf._MessageImplementationBase, AppleSwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".TestRequiredOptimizedForSize"
  static let _protobuf_nameMap: AppleSwiftProtobuf._NameMap = [
    1: .same(proto: "x"),
  ]

  public var isInitialized: Bool {
    if self._x == nil {return false}
    return true
  }

  mutating func decodeMessage<D: AppleSwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt32Field(value: &self._x) }()
      default: break
      }
    }
  }

  func traverse<V: AppleSwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._x {
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 1)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: ProtobufUnittest_TestRequiredOptimizedForSize, rhs: ProtobufUnittest_TestRequiredOptimizedForSize) -> Bool {
    if lhs._x != rhs._x {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension ProtobufUnittest_TestOptionalOptimizedForSize: AppleSwiftProtobuf.Message, AppleSwiftProtobuf._MessageImplementationBase, AppleSwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".TestOptionalOptimizedForSize"
  static let _protobuf_nameMap: AppleSwiftProtobuf._NameMap = [
    1: .same(proto: "o"),
  ]

  public var isInitialized: Bool {
    if let v = self._o, !v.isInitialized {return false}
    return true
  }

  mutating func decodeMessage<D: AppleSwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._o) }()
      default: break
      }
    }
  }

  func traverse<V: AppleSwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._o {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: ProtobufUnittest_TestOptionalOptimizedForSize, rhs: ProtobufUnittest_TestOptionalOptimizedForSize) -> Bool {
    if lhs._o != rhs._o {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
