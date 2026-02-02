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
            url: "https://github.com/PrimalHQ/primal-shared-ios/releases/download/0.1.4/PrimalShared.xcframework.zip",
            checksum: "424910d34dd26b4994b03ad2376f1e90d15541c365557b53383e0f35001dde24"
        )
    ]
)
