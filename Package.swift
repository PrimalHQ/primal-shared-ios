// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "PrimalShared",
    platforms: [.iOS(.v16)],
    products: [
        .library(name: "PrimalShared", targets: ["PrimalShared"])
    ],
    targets: [
        .binaryTarget(
            name: "PrimalShared",
            url: "https://github.com/PrimalHQ/primal-shared-ios/releases/download/0.1.16/PrimalShared.xcframework.zip",
            checksum: "9125c97edee87f5bd0d97c2f0126621bf54975f54d6a0a2e402de87b5c9e14b0"
        )
    ]
)
