// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "PluginExamples",
    dependencies: [
        .package(path: "../")
    ],
    targets: targets()
)

private func targets() -> [Target] {
    var testDependencies: [Target.Dependency] = [
        .target(name: "Simple"),
        .target(name: "Nested"),
        .target(name: "Import"),
    ]
    #if compiler(>=5.9)
    testDependencies.append(.target(name: "AccessLevelOnImport"))
    #endif
    var targets: [Target] = [
        .testTarget(
            name: "ExampleTests",
            dependencies: testDependencies
        ),
        .target(
            name: "Simple",
            dependencies: [
                .product(name: "AppleSwiftProtobuf", package: "swift-protobuf")
            ],
            plugins: [
                .plugin(name: "AppleSwiftProtobufPlugin", package: "swift-protobuf")
            ]
        ),
        .target(
            name: "Nested",
            dependencies: [
                .product(name: "AppleSwiftProtobuf", package: "swift-protobuf")
            ],
            plugins: [
                .plugin(name: "AppleSwiftProtobufPlugin", package: "swift-protobuf")
            ]
        ),
        .target(
            name: "Import",
            dependencies: [
                .product(name: "AppleSwiftProtobuf", package: "swift-protobuf")
            ],
            plugins: [
                .plugin(name: "AppleSwiftProtobufPlugin", package: "swift-protobuf")
            ]
        ),
    ]
    #if compiler(>=5.9)
    targets.append(
        .target(
            name: "AccessLevelOnImport",
            dependencies: [
                .product(name: "AppleSwiftProtobuf", package: "swift-protobuf")
            ],
            swiftSettings: [
                .enableExperimentalFeature("AccessLevelOnImport")
            ],
            plugins: [
                .plugin(name: "AppleSwiftProtobufPlugin", package: "swift-protobuf")
            ]
        )
    )
    #endif
    return targets
}
