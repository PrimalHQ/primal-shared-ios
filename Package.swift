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
            url: "https://github.com/PrimalHQ/primal-shared-ios/releases/download/0.1.13/PrimalShared.xcframework.zip",
            checksum: "1c30fe50dfd385d4b9c5aad261db3a93aff612569668038ce2dd03c1dfa8e0d1"
        )
    ]
)
