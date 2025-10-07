// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Insider",
    products: [
        .library(
            name: "InsiderMobile",
            targets: ["InsiderMobile"]),
        .library(
            name: "InsiderGeofence",
            targets: ["InsiderGeofence"]),
        .library(
            name: "InsiderMobileAdvancedNotification",
            targets: ["InsiderMobileAdvancedNotification"])
    ],
    targets: [
        .binaryTarget(
            name: "InsiderMobile",
            url: "https://mobilesdk.useinsider.com/iOS/14.0.5/InsiderMobileIOSFramework.zip",
            checksum: "31f51ecabd851e8ba2ed13c50ba1e49aa9c4a5431d72946c0556245e0f32a8bb"
        ),
        .binaryTarget(
            name: "InsiderGeofence",
            url: "https://mobilesdk.useinsider.com/iOS/InsiderGeofence/1.2.3/InsiderGeofenceIOSFramework.zip",
            checksum: "75169e0d7623bad9255142c6527795cfd049d72eb0ace42286c8e0f6be3ea56a"
        ),
        .binaryTarget(
            name: "InsiderMobileAdvancedNotification",
            url: "https://mobilesdk.useinsider.com/iOSNotification/2.3.1/InsiderMobileAdvancedNotification.zip",
            checksum: "6f5c8ea5a91259b6722671cc9c84d0e159b900f0baa4297f31a6debf7c6f4feb"
        ),
        .target(
            name: "InsiderNotificationContent",
            dependencies: ["InsiderMobileAdvancedNotification"],
            path: "./",
            resources: [
                .process("InsiderInterface.storyboard")
            ]
        ),

    ]
)
