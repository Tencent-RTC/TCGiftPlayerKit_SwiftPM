// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "TCGiftPlayerKit",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "TCGiftPlayerKit",
            targets: ["TCGiftPlayerKit", "TCGiftPlayerKitDeps"])
    ],
    dependencies: [
        .package(url: "https://github.com/Tencent-RTC/TUICore_SwiftPM.git", from: "9.0.7656")
    ],
    targets: [
        .binaryTarget(
            name: "TCGiftPlayerKit",
            url: "https://sdk-liteav-1252463788.cos.ap-hongkong.myqcloud.com/app/tuikit/download/release/1.0/TCGiftPlayerKit_1.0.2.xcframework.zip",
            checksum: "91b1d45568a0e8e2b0913cea2407d57085d1ba513ff31532fe5b7d505d74cda0"),
        .target(
            name: "TCGiftPlayerKitDeps",
            dependencies: [
                .product(name: "TUICore_SwiftPM", package: "TUICore_SwiftPM")
            ],
            path: "Sources/Deps",
            linkerSettings: [
                .linkedFramework("Accelerate"),
                .linkedFramework("Combine"),
                .linkedFramework("CoreGraphics"),
                .linkedFramework("CryptoKit"),
                .linkedFramework("Foundation"),
                .linkedFramework("ImageIO"),
                .linkedFramework("Metal"),
                .linkedFramework("MetalKit"),
                .linkedFramework("UIKit"),
                .linkedLibrary("compression")
            ])
    ])
