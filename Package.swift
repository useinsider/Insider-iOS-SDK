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
            targets: ["InsiderGeofence", "InsiderMobile"]),
        .library(
            name: "InsiderMobileAdvancedNotification",
            targets: ["InsiderMobileAdvancedNotification"]),
        .library(
            name: "InsiderWebView",
            targets: ["InsiderWebView", "InsiderMobile"]),
        .library(
            name: "InsiderLiveActivities",
            targets: ["InsiderLiveActivities", "InsiderMobile"]),
        .library(
            name: "InsiderHybrid",
            targets: ["InsiderHybrid", "InsiderMobile"]),
    ],
    targets: [
        .binaryTarget(
            name: "InsiderMobile",
            url: "https://mobilesdk.useinsider.com/iOS/16.2.1/InsiderMobileIOSFramework.zip",
            checksum: "370904cb513a96838b07eb8c18efe5d0beb4c0f5fdaeb0a282ce0a6cf86683fb"
        ),
        .binaryTarget(  
            name: "InsiderGeofence",
            url: "https://mobilesdk.useinsider.com/iOS/InsiderGeofence/1.3.0/InsiderGeofenceIOSFramework.zip",
            checksum: "ed8f7dd85994f46daf7a1b706bac1035370f1a9737e126d4f4550a2449b84018"
        ),
        .binaryTarget(
            name: "InsiderMobileAdvancedNotification",
            url: "https://mobilesdk.useinsider.com/iOSNotification/2.4.1/InsiderMobileAdvancedNotification.zip",
            checksum: "8db740e809e08ecd89ce4871fdbdd1b805cb53dcb561e74b6e178e33d1bc5409"
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
            url: "https://mobilesdk.useinsider.com/iOSWebView/1.1.0/InsiderWebViewIOSFramework.zip",
            checksum: "42b968138d713f121829ab96567d5acf19a543f7a796a02a2c72f8e0183c7eea"
        ),
        .binaryTarget(
            name: "InsiderHybrid",
            url: "https://mobilesdk.useinsider.com/iOSHybrid/1.8.0/InsiderHybridFramework.zip",
            checksum: "0b881e64313a3b7160c6b036dba73d690477b848d5222e9cb333300af0c589db"
        ),
        .binaryTarget(
            name: "InsiderLiveActivities",
            url: "https://mobilesdk.useinsider.com/iOS/InsiderLiveActivities/1.1.0/InsiderLiveActivitiesIOSFramework.zip",
            checksum: "76a2ebe11e5d4ddb537eeb8bd3d467c4f958b493ff3515de329110ceb045ba95"
        ),
    ]
)
