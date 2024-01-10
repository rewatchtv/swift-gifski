// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "swift-gifski",
    platforms: [
        .macOS(.v12)
    ],
    products: [
        .library(name: "Gifski", targets: ["Gifski"]),
    ],
    targets: [
        .binaryTarget(name: "Gifski", path: "gifski/Gifski.xcframework.zip")
    ]
)
