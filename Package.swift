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
            url: "https://github.com/PrimalHQ/primal-shared-ios/releases/download/0.1.15/PrimalShared.xcframework.zip",
            checksum: "57266b534db8170e85aaced716ffe7ab6a49e737890055d366363b5224191cf1"
        )
    ]
)
