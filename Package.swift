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
            url: "https://github.com/PrimalHQ/primal-shared-ios/releases/download/0.1.18/PrimalShared.xcframework.zip",
            checksum: "5669b81fb5277bd724c560cd136a805cb86be9a2dc5b1633584a2bcc8dafd396"
        )
    ]
)
