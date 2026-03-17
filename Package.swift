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
            url: "https://github.com/PrimalHQ/primal-shared-ios/releases/download/0.1.17/PrimalShared.xcframework.zip",
            checksum: "2f1e741c2225b65c8f49a1b53ad34fa47a978db63ee0e8ef1ee6d0ffb88b51e6"
        )
    ]
)
