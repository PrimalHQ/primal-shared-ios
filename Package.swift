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
            url: "https://github.com/PrimalHQ/primal-shared-ios/releases/download/0.1.11/PrimalShared.xcframework.zip",
            checksum: "347d21d8dfbd8bd95f47fd2737392eb5924211fa3da105068be1ffc1b9405ad3"
        )
    ]
)
