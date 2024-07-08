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
            url: "https://mobilesdk.useinsider.com/iOS/13.5.2/InsiderMobileIOSFramework.zip",
            checksum: "f88b8a849fa02dde805e793316adb59b16aab1b0a9b12b5e67274f35d611d466"
        ),
        .binaryTarget(
            name: "InsiderGeofence",
            url: "https://mobilesdk.useinsider.com/iOS/InsiderGeofence/1.2.0/InsiderGeofenceIOSFramework.zip",
            checksum: "c180df9943ebc66a13717d6ddfc14d7cb225c98b3c5bfcaad5236f5f2127aba5"
        ),
        .binaryTarget(
            name: "InsiderMobileAdvancedNotification",
            url: "https://mobilesdk.useinsider.com/iOSNotification/2.0.0/InsiderMobileAdvancedNotification.zip",
            checksum: "73280042c545a56a9655563b28f33233091441fd04280d4a9906c54cb8232527"
        ),
    ]
)
