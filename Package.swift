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
            url: "https://mobilesdk.useinsider.com/iOS/13.8.1/InsiderMobileIOSFramework.zip",
            checksum: "10da7ddfb3be6bd37fc079c2492af962245f6ccb16fa7152264f89f52de287dc"
        ),
        .binaryTarget(
            name: "InsiderGeofence",
            url: "https://mobilesdk.useinsider.com/iOS/InsiderGeofence/1.2.0/InsiderGeofenceIOSFramework.zip",
            checksum: "c180df9943ebc66a13717d6ddfc14d7cb225c98b3c5bfcaad5236f5f2127aba5"
        ),
        .binaryTarget(
            name: "InsiderMobileAdvancedNotification",
            url: "https://mobilesdk.useinsider.com/iOSNotification/2.1.0/InsiderMobileAdvancedNotification.zip",
            checksum: "783e81e3725b2663953d613cc324e4ea9ec6d4db0bfd64b6444f828349d43c54"
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
