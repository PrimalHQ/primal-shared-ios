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
            url: "https://github.com/PrimalHQ/primal-shared-ios/releases/download/0.1.8/PrimalShared.xcframework.zip",
            checksum: "c6c4b237416b0ba1197d806accf3467db9d5abcc9ac2ea4444b65b7d919fd2e5"
        )
    ]
)
