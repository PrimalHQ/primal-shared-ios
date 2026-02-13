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
            url: "https://github.com/PrimalHQ/primal-shared-ios/releases/download/0.1.7/PrimalShared.xcframework.zip",
            checksum: "0f0edacec44867b0023466e72445157254f2b6c8b7c0cc10af99cf30425916c3"
        )
    ]
)
