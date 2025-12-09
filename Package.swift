// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "Sunflower",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "SunflowerUIKit",
            targets: ["SunflowerUIKitWrapper"]
        ),
        .library(
            name: "SunflowerSwiftUI",
            targets: ["SunflowerSwiftUIWrapper"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/airbnb/lottie-spm.git", exact: "4.5.2")
    ],
    targets: [
        .binaryTarget(
            name: "SunflowerUIKit",
            url: "https://github.com/idnow/sunflower-sdk-ios/releases/download/2.1.0/SunflowerUIKit.xcframework.zip",
            checksum: "4cfc986121feb282497037df8432b0f8bb3bdf65c1c535726887d81d46b7d722"
        ),
        .binaryTarget(
            name: "SunflowerSwiftUI",
            url: "https://github.com/idnow/sunflower-sdk-ios/releases/download/2.1.0/SunflowerSwiftUI.xcframework.zip",
            checksum: "d065742bfbb394ee8bf67fe3089d9f85936937f2741fe51bc717b34a057c9bef"
        ),
        .target(
             // Main target which contains both SunflowerUIKit and the lottie dependency. Automatically downloaded when client fetch Sunflower.
            name: "SunflowerUIKitWrapper",
            dependencies: [
                "SunflowerUIKit",
                .product(name: "Lottie", package: "lottie-spm")
            ],
            path: "sources"
        ),
        .target(
             // Main target which contains both SunflowerSwiftUI and the lottie dependency. Automatically downloaded when client fetch Sunflower.
            name: "SunflowerSwiftUIWrapper",
            dependencies: [
                "SunflowerSwiftUI",
                .product(name: "Lottie", package: "lottie-spm")
            ],
            path: "sources-swiftui"
        )
    ]
)
