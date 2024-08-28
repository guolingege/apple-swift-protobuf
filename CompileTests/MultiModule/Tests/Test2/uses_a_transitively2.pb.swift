// DO NOT EDIT.
// swift-format-ignore-file
// swiftlint:disable all
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: Tests/Test2/uses_a_transitively2.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import SwiftProtobuf

import ImportsImportsAPublicly

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

public struct UsesATransitively2: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var a: ModuleA.A {
    get {return _a ?? ModuleA.A()}
    set {_a = newValue}
  }
  /// Returns true if `a` has been explicitly set.
  public var hasA: Bool {return self._a != nil}
  /// Clears the value of `a`. Subsequent reads from it will return its default value.
  public mutating func clearA() {self._a = nil}

  public var e: ModuleA.E {
    get {return _e ?? .unset}
    set {_e = newValue}
  }
  /// Returns true if `e` has been explicitly set.
  public var hasE: Bool {return self._e != nil}
  /// Clears the value of `e`. Subsequent reads from it will return its default value.
  public mutating func clearE() {self._e = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _a: ModuleA.A? = nil
  fileprivate var _e: ModuleA.E? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension UsesATransitively2: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = "UsesATransitively2"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    111: .same(proto: "a"),
    122: .same(proto: "e"),
  ]

  public var isInitialized: Bool {
    if let v = self._a, !v.isInitialized {return false}
    return true
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 111: try { try decoder.decodeSingularMessageField(value: &self._a) }()
      case 122: try { try decoder.decodeSingularEnumField(value: &self._e) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._a {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 111)
    } }()
    try { if let v = self._e {
      try visitor.visitSingularEnumField(value: v, fieldNumber: 122)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: UsesATransitively2, rhs: UsesATransitively2) -> Bool {
    if lhs._a != rhs._a {return false}
    if lhs._e != rhs._e {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
