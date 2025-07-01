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
            url: "https://mobilesdk.useinsider.com/iOS/13.12.2/InsiderMobileIOSFramework.zip",
            checksum: "c5113055ac9bd6506030cafd52ca54b0e69d84b3de0ccfb96b979f2c0fe7fdb6"
        ),
        .binaryTarget(
            name: "InsiderGeofence",
            url: "https://mobilesdk.useinsider.com/iOS/InsiderGeofence/1.2.2/InsiderGeofenceIOSFramework.zip",
            checksum: "f777dc5762b154acda493bd0de14b4e95a284dff97b8cfcbe1ac38c6f3a56d78"
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
