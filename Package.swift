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
            url: "https://github.com/PrimalHQ/primal-shared-ios/releases/download/0.1.20/PrimalShared.xcframework.zip",
            checksum: "246dd993a88b83afe3e4ea00b47fbffd54be34f503c1995df16416253baacda9"
        )
    ]
)
