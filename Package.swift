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
            url: "https://github.com/PrimalHQ/primal-shared-ios/releases/download/0.1.12/PrimalShared.xcframework.zip",
            checksum: "9b55da3aa918477f92b3b60037e2fc707def326a388a2664d6213f7528d14b69"
        )
    ]
)
