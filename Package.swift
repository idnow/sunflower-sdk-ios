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
            url: "https://github.com/idnow/sunflower-sdk-ios/releases/download/2.1.13/SunflowerUIKit.xcframework.zip",
            checksum: "d0eb50ed5e78265340719810d11baf436f65ee297b4ee5f71c14d8eedca444cc"
        ),
        .binaryTarget(
            name: "SunflowerSwiftUI",
            url: "https://github.com/idnow/sunflower-sdk-ios/releases/download/2.1.13/SunflowerSwiftUI.xcframework.zip",
            checksum: "3c186a38fb66041503b6bd74025afd612ca5e2a18c4b31a12e180ffea52fe743"
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
