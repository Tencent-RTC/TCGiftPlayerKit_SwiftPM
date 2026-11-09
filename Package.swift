// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "TCGiftPlayerKit",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "TCGiftPlayerKit",
                 targets: ["TCGiftPlayerKit", "TCGiftPlayerKitDeps"])
    ],
    dependencies: [
        .package(url: "https://github.com/Tencent-RTC/TUICore_SwiftPM.git", from: "9.0.7656")
    ],
    targets: [
        .binaryTarget(
            name: "TCGiftPlayerKit",
            url: "https://liteav.sdk.qcloud.com/app/tuikit/download/release/1.0/TCGiftPlayerKit.xcframework.zip",
            checksum: "2f504e2673b3aa07245383d304731e2b87ed99a09adde2c8a41593a597d33d81"
        ),
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
            ]
        )
    ]
)
