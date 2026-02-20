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
            url: "https://github.com/PrimalHQ/primal-shared-ios/releases/download/0.1.9/PrimalShared.xcframework.zip",
            checksum: "81ee99b71046ee5f29e6a3b501fdcc90ec2a1838e7cb6e6306b99f37bf9250f5"
        )
    ]
)
