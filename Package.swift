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
            url: "https://github.com/PrimalHQ/primal-shared-ios/releases/download/0.2.2/PrimalShared.xcframework.zip",
            checksum: "7ea19c3321050de335e64f9e139bd7b41895fb308dd5a85711096a8fa1346e95"
        )
    ]
)
