// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FuzzTesting",
    platforms: [
        .macOS(.v10_15)
    ],
    dependencies: [
        .package(name: "AppleSwiftProtobuf", path: "..")
    ],
    targets: [
        .target(
            name: "FuzzCommon",
            dependencies: ["AppleSwiftProtobuf"]
        ),
        .target(
            name: "FuzzBinary",
            dependencies: ["AppleSwiftProtobuf", "FuzzCommon"]
        ),
        .target(
            name: "FuzzBinaryDelimited",
            dependencies: ["AppleSwiftProtobuf", "FuzzCommon"]
        ),
        .target(
            name: "FuzzAsyncMessageSequence",
            dependencies: ["AppleSwiftProtobuf", "FuzzCommon"]
        ),
        .target(
            name: "FuzzJSON",
            dependencies: ["AppleSwiftProtobuf", "FuzzCommon"]
        ),
        .target(
            name: "FuzzTextFormat",
            dependencies: ["AppleSwiftProtobuf", "FuzzCommon"]
        ),
        .testTarget(
            name: "FuzzCommonTests",
            dependencies: ["FuzzCommon"]
        ),
    ]
)
