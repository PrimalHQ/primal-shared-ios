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
            url: "https://github.com/PrimalHQ/primal-shared-ios/releases/download/0.3.3/PrimalShared.xcframework.zip",
            checksum: "b1391e0c89033d0781bac344c83358aaa049ca1b9baee7adc86c04e9d56c7f36"
        )
    ]
)
