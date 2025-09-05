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
            url: "https://mobilesdk.useinsider.com/iOS/14.0.2/InsiderMobileIOSFramework.zip",
            checksum: "f0396978713971f7d545f2c9a9fba398cd1630e47b545e8fbbba7a0c5ba0cebf"
        ),
        .binaryTarget(
            name: "InsiderGeofence",
            url: "https://mobilesdk.useinsider.com/iOS/InsiderGeofence/1.2.3/InsiderGeofenceIOSFramework.zip",
            checksum: "75169e0d7623bad9255142c6527795cfd049d72eb0ace42286c8e0f6be3ea56a"
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
