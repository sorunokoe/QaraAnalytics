// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "QaraAnalytics",
    platforms: [.iOS(.v16)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "QaraAnalytics",
            targets: ["QaraAnalytics"]),
    ],
    dependencies: [
        .package(name: "AmplitudeSwift", url: "https://github.com/amplitude/Amplitude-Swift", branch: "main"),
        .package(name: "Firebase", url: "https://github.com/firebase/firebase-ios-sdk.git", from: "10.25.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "QaraAnalytics",
        dependencies: [
            "AmplitudeSwift",
            .product(name: "FirebaseAnalytics", package: "Firebase")
        ]),
        .testTarget(
            name: "QaraAnalyticsTests",
            dependencies: ["QaraAnalytics"]),
    ]
)
