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
            url: "https://github.com/PrimalHQ/primal-shared-ios/releases/download/0.2.0/PrimalShared.xcframework.zip",
            checksum: "e4fbabf8bab44a98fe4b2798baaa15cde573afc49b4378c3238a67071b91ed77"
        )
    ]
)
