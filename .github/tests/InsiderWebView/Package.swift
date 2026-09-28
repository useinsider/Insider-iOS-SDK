// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "SmokeTests",
    platforms: [
        .iOS(.v12)
    ],
    dependencies: [
        .package(name: "Insider", path: "../../..")
    ],
    targets: [
        .testTarget(
            name: "SmokeTests",
            dependencies: [.product(name: "InsiderWebView", package: "Insider")],
            path: "Tests"
        )
    ]
)
