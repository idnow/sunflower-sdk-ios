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
            url: "https://github.com/idnow/sunflower-sdk-ios/releases/download/2.1.8/SunflowerUIKit.xcframework.zip",
            checksum: "fb13189fe8167aeb837bef1613a7f0d5eeab2ee856202af2df00748f4811f5f7"
        ),
        .binaryTarget(
            name: "SunflowerSwiftUI",
            url: "https://github.com/idnow/sunflower-sdk-ios/releases/download/2.1.8/SunflowerSwiftUI.xcframework.zip",
            checksum: "3934702aae583f0c88271c47ca1dc79f408957567665c3d060b2eb989f42517b"
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
