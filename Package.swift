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
            url: "https://github.com/PrimalHQ/primal-shared-ios/releases/download/0.1.3/PrimalShared.xcframework.zip",
            checksum: "c3eedb542583a4acd11105041feb8a73e94d79c462bd424893add72a2676b51b"
        )
    ]
)
