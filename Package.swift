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
            url: "https://mobilesdk.useinsider.com/iOS/14.2.0/InsiderMobileIOSFramework.zip",
            checksum: "a842115bbb85e8bb593405a4b11824436672dc11d29067cbf186b54021046c7d"
        ),
        .binaryTarget(  
            name: "InsiderGeofence",
            url: "https://mobilesdk.useinsider.com/iOS/InsiderGeofence/1.2.4/InsiderGeofenceIOSFramework.zip",
            checksum: "a18057c7b31d3da0280d944618be9971ce991eb33a4ee383dadaa30a36785614"
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
        .binaryTarget(
            name: "InsiderWebView",
            url: "https://mobilesdk.useinsider.com/iOSWebView/1.0.0/InsiderWebViewIOSFramework.zip",
            checksum: "2289efbd905b80a7a1a9528f4144543ef3b10ed8eeeaa4cd3d7db75816fdbf31"
        ),
    ]
)
