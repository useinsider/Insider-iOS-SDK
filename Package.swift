// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Insider",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "InsiderMobile",
            targets: ["InsiderMobile"]),
        .library(
            name: "InsiderGeofence",
            targets: ["InsiderGeofence"]),
        .library(
            name: "InsiderMobileAdvancedNotification",
            targets: ["InsiderMobileAdvancedNotification"]),
        .library(
            name: "InsiderWebView",
            targets: ["InsiderWebView", "InsiderMobile"]),
    ],
    targets: [
        .binaryTarget(
            name: "InsiderMobile",
            url: "https://mobilesdk.useinsider.com/iOS/15.0.3/InsiderMobileIOSFramework.zip",
            checksum: "97e947696b0a43acd2b14e4a0ab9442931ff26f416809345a5009d71c884afd4"
        ),
        .binaryTarget(  
            name: "InsiderGeofence",
            url: "https://mobilesdk.useinsider.com/iOS/InsiderGeofence/1.2.4/InsiderGeofenceIOSFramework.zip",
            checksum: "a18057c7b31d3da0280d944618be9971ce991eb33a4ee383dadaa30a36785614"
        ),
        .binaryTarget(
            name: "InsiderMobileAdvancedNotification",
            url: "https://mobilesdk.useinsider.com/iOSNotification/2.3.2/InsiderMobileAdvancedNotification.zip",
            checksum: "02a12d0b5f0b264e8cfa46806e86b589ac3a3ea4b252bcd175dc1e55894c0612"
        ),
        .target(
            name: "InsiderNotificationContent",
            dependencies: ["InsiderMobileAdvancedNotification"],
            path: "./",
            resources: [
                .process("InsiderInterface.storyboard")
            ]
        ),
        .binaryTarget(
            name: "InsiderWebView",
            url: "https://mobilesdk.useinsider.com/iOSWebView/1.0.0/InsiderWebViewIOSFramework.zip",
            checksum: "217f67bdef288f7b26e2a22c8ba34f33feb36062065186c0bd707a6f1f7bcfc2"
        ),
    ]
)
