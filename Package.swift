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
            url: "https://github.com/PrimalHQ/primal-shared-ios/releases/download/0.2.3/PrimalShared.xcframework.zip",
            checksum: "29b7bb584ada85702622a6f88f9ce00367f00ab10906f2df4b41fa9cc964476a"
        )
    ]
)
