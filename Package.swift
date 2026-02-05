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
            url: "https://github.com/PrimalHQ/primal-shared-ios/releases/download/0.1.5/PrimalShared.xcframework.zip",
            checksum: "3c49314c0947de8f6af4c42f3cd94a915fb8d6a692c718cebd4fc70f6b1ebe88"
        )
    ]
)
