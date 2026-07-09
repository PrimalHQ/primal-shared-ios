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
            url: "https://github.com/PrimalHQ/primal-shared-ios/releases/download/0.2.7/PrimalShared.xcframework.zip",
            checksum: "042929e294847bad5a94748d8eb4b80e0fe1c50195ec01e8bf06df3120abc1f0"
        )
    ]
)
