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
            url: "https://github.com/PrimalHQ/primal-shared-ios/releases/download/0.2.1/PrimalShared.xcframework.zip",
            checksum: "92e9b4afbc04155a7aed4791dea85f1667108dd0b946e5e9ac05eb3f887ae9b8"
        )
    ]
)
