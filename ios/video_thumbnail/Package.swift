// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "video_thumbnail",
    platforms: [.iOS("13.0")],
    products: [
        .library(name: "video-thumbnail", targets: ["video_thumbnail"])
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework"),
        // Same package SDWebImageWebPCoder uses, so an app links a single libwebp.
        .package(url: "https://github.com/SDWebImage/libwebp-Xcode.git", from: "1.6.0"),
    ],
    targets: [
        .target(
            name: "video_thumbnail",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework"),
                .product(name: "libwebp", package: "libwebp-Xcode"),
            ],
            cSettings: [.headerSearchPath("include/video_thumbnail")]
        )
    ]
)
