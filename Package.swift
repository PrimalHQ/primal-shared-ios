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
            url: "https://github.com/PrimalHQ/primal-shared-ios/releases/download/0.3.2/PrimalShared.xcframework.zip",
            checksum: "423a01413e1f7f9a5aa9c88a30e0882676f27ba1b539f41fad9ca367c3a9abb4"
        )
    ]
)
