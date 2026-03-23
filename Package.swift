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
            url: "https://github.com/PrimalHQ/primal-shared-ios/releases/download/0.1.21/PrimalShared.xcframework.zip",
            checksum: "447a4e7a5bcdc42149b3575e1bc99407945424a31504bac70fdc80b850c1a405"
        )
    ]
)
