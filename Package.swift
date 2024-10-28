// swift-tools-version:5.8

// Package.swift
//
// Copyright (c) 2014 - 2018 Apple Inc. and the project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See LICENSE.txt for license information:
// https://github.com/apple/swift-protobuf/blob/main/LICENSE.txt
//

import PackageDescription

let package = Package(
    name: "AppleSwiftProtobuf",
    products: [
        .executable(
            name: "protoc-gen-swift",
            targets: ["protoc-gen-swift"]
        ),
        .library(
            name: "AppleSwiftProtobuf",
            targets: ["AppleSwiftProtobuf"]
        ),
        .library(
            name: "AppleSwiftProtobufPluginLibrary",
            targets: ["AppleSwiftProtobufPluginLibrary"]
        ),
        .plugin(
            name: "AppleSwiftProtobufPlugin",
            targets: ["AppleSwiftProtobufPlugin"]
        ),
    ],
    targets: [
        .target(
            name: "AppleSwiftProtobuf",
            exclude: ["CMakeLists.txt"],
            resources: [.copy("PrivacyInfo.xcprivacy")],
            swiftSettings: .packageSettings
        ),
        .target(
            name: "AppleSwiftProtobufPluginLibrary",
            dependencies: ["AppleSwiftProtobuf"],
            exclude: ["CMakeLists.txt"],
            resources: [.copy("PrivacyInfo.xcprivacy")],
            swiftSettings: .packageSettings
        ),
        .target(
            name: "AppleSwiftProtobufTestHelpers",
            dependencies: ["AppleSwiftProtobuf"],
            swiftSettings: .packageSettings
        ),
        .executableTarget(
            name: "protoc-gen-swift",
            dependencies: ["AppleSwiftProtobufPluginLibrary", "AppleSwiftProtobuf"],
            exclude: ["CMakeLists.txt"],
            swiftSettings: .packageSettings
        ),
        .executableTarget(
            name: "Conformance",
            dependencies: ["AppleSwiftProtobuf"],
            exclude: ["failure_list_swift.txt", "text_format_failure_list_swift.txt"],
            swiftSettings: .packageSettings
        ),
        .plugin(
            name: "AppleSwiftProtobufPlugin",
            capability: .buildTool(),
            dependencies: ["protoc-gen-swift"]
        ),
        .testTarget(
            name: "AppleSwiftProtobufTests",
            dependencies: ["AppleSwiftProtobuf"],
            swiftSettings: .packageSettings
        ),
        .testTarget(
            name: "AppleSwiftProtobufPluginLibraryTests",
            dependencies: ["AppleSwiftProtobufPluginLibrary", "AppleSwiftProtobufTestHelpers"],
            swiftSettings: .packageSettings
        ),
        .testTarget(
            name: "protoc-gen-swiftTests",
            dependencies: ["protoc-gen-swift", "AppleSwiftProtobufTestHelpers"],
            swiftSettings: .packageSettings
        ),
    ],
    swiftLanguageVersions: [.v5]
)

// Settings for every Swift target in this package, like project-level settings
// in an Xcode project.
extension Array where Element == PackageDescription.SwiftSetting {
    static var packageSettings: Self {
        [
            .enableExperimentalFeature("StrictConcurrency=complete"),
            .enableUpcomingFeature("ExistentialAny"),
        ]
    }
}
