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
            url: "https://github.com/PrimalHQ/primal-shared-ios/releases/download/0.1.6/PrimalShared.xcframework.zip",
            checksum: "8886b73ed36cd333def6357e91a5a9b40f12980d8c9924e84d0b1811af3ca679"
        )
    ]
)
