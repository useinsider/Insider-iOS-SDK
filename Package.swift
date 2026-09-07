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
            url: "https://mobilesdk.useinsider.com/iOS/16.0.0/InsiderMobileIOSFramework.zip",
            checksum: "8f2dc18707d4433d33abc4ff6f39c9f897cf9a089c31c2088c5882163690e663"
        ),
        .binaryTarget(  
            name: "InsiderGeofence",
            url: "https://mobilesdk.useinsider.com/iOS/InsiderGeofence/1.2.4/InsiderGeofenceIOSFramework.zip",
            checksum: "a18057c7b31d3da0280d944618be9971ce991eb33a4ee383dadaa30a36785614"
        ),
        .binaryTarget(
            name: "InsiderMobileAdvancedNotification",
            url: "https://mobilesdk.useinsider.com/iOSNotification/2.4.0/InsiderMobileAdvancedNotification.zip",
            checksum: "18fa8199f4cb3f529ca6b650248b6bacdb1ea03706366e56c9cad11ba786cd55"
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
        .binaryTarget(
            name: "InsiderHybrid",
            url: "https://mobilesdk.useinsider.com/iOSHybrid/1.7.6/InsiderHybridFramework.zip",
            checksum: "5c1ec5ec301d3804e15c54a461e193efaf6e92001ad9a57be0464aa146a4ab24"
        ),
        .binaryTarget(
            name: "InsiderLiveActivities",
            url: "https://mobilesdk.useinsider.com/iOS/InsiderLiveActivities/1.0.0/InsiderLiveActivitiesIOSFramework.zip",
            checksum: "adc242cfac21badf849455d785ee96699ec38e5f8fe8b631bdd05514b3153255"
        ),
    ]
)
