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
            url: "https://github.com/PrimalHQ/primal-shared-ios/releases/download/0.1.19/PrimalShared.xcframework.zip",
            checksum: "489fd3f47040a042ac3f169a561875b8c3d927d4172f94e4c46d7242656c8cad"
        )
    ]
)
