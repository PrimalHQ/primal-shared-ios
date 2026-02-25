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
            url: "https://github.com/PrimalHQ/primal-shared-ios/releases/download/0.1.10/PrimalShared.xcframework.zip",
            checksum: "9918c24309d09b77758357724c208c5b8211fb0e56c658d6ecddaeb679223291"
        )
    ]
)
