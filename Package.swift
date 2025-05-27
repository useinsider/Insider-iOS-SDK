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
            url: "https://mobilesdk.useinsider.com/iOS/13.12.1/InsiderMobileIOSFramework.zip",
            checksum: "1523c2d0c169b27aef3cfb51268118187abef59abfe61f4bbd474c9d1977e899"
        ),
        .binaryTarget(
            name: "InsiderGeofence",
            url: "https://mobilesdk.useinsider.com/iOS/InsiderGeofence/1.2.0/InsiderGeofenceIOSFramework.zip",
            checksum: "c180df9943ebc66a13717d6ddfc14d7cb225c98b3c5bfcaad5236f5f2127aba5"
        ),
        .binaryTarget(
            name: "InsiderMobileAdvancedNotification",
            url: "https://mobilesdk.useinsider.com/iOSNotification/2.3.0/InsiderMobileAdvancedNotification.zip",
            checksum: "5c5276c50287e82d58f873b51edf1a4141b0aa7906506faf114ecbc4545b7b92"
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
