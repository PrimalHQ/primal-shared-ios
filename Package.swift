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
            url: "https://github.com/PrimalHQ/primal-shared-ios/releases/download/0.3.0/PrimalShared.xcframework.zip",
            checksum: "ee1c44cb78ea6d2812259d2a1ed131d5c91f6ec48e9e1084cc7ce5c3b4998ff9"
        )
    ]
)
