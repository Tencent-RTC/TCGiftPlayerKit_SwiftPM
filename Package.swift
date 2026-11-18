// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "TCGiftPlayerKit", platforms: [.iOS(.v15)],
    products: [.library(name: "TCGiftPlayerKit", targets: ["TCGiftPlayerKit"])],
    targets: [
        .binaryTarget(
            name: "TCGiftPlayerKit",
            url: "https://sdk-liteav-1252463788.cos.ap-hongkong.myqcloud.com/app/tuikit/download/release/1.0/TCGiftPlayerKit_1.0.1.xcframework.zip",
            checksum: "002c9e3c14b1fd00156330d869241d944d2fff4e412e8419370b14715d83e8ee")
    ])
