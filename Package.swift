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
            url: "https://github.com/PrimalHQ/primal-shared-ios/releases/download/0.2.6/PrimalShared.xcframework.zip",
            checksum: "589be1b48cc5196304fc70f811688c5e859ad99b9c898556f76e0ba8ad623c11"
        )
    ]
)
