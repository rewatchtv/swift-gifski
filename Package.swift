// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "swiftski",
    products: [
        .library(name: "swiftski", targets: ["swiftski"]),
        .library(name: "gifski", targets: ["gifski"]),
    ],
    targets: [
        .target(name: "swiftski", dependencies: ["Gifski"]),
        .testTarget(name: "swiftskiTests", dependencies: ["swiftski"]),
        .binaryTarget(name: "Gifski", path: "Gifski.xcframework")
    ]
)
