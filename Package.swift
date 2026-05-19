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
            url: "https://github.com/PrimalHQ/primal-shared-ios/releases/download/0.2.4/PrimalShared.xcframework.zip",
            checksum: "9ecf6aae0457a920fb2d487abb473b2ce9393b23683a667106313792d2b625d5"
        )
    ]
)
