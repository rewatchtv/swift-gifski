// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "Swiftski",
    platforms: [
        .macOS(.v12)
    ],
    products: [
        .library(name: "Swiftski", targets: ["Swiftski"]),
        .library(name: "Gifski", targets: ["Gifski"]),
    ],
    targets: [
        .target(name: "Swiftski", dependencies: ["Gifski"]),
        .testTarget(name: "SwiftskiTests", dependencies: ["Swiftski"]),
        .binaryTarget(name: "Gifski", path: "gifski/Gifski.xcframework.zip")
    ]
)
