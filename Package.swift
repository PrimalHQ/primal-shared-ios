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
            url: "https://github.com/PrimalHQ/primal-shared-ios/releases/download/0.3.1/PrimalShared.xcframework.zip",
            checksum: "ccc6d13bd328d5e879c24f530bbf1134948d0d455004b5b019569b14b17321c7"
        )
    ]
)
