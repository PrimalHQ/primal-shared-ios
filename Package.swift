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
            url: "https://github.com/PrimalHQ/primal-shared-ios/releases/download/0.1.14/PrimalShared.xcframework.zip",
            checksum: "3059b4982b847b5be4ba7f42ca17ac42e98ca67ddcd3fccfffeb6020e0f9ffdc"
        )
    ]
)
