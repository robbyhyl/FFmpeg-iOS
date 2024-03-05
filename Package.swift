// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "FFmpeg-iOS",
    platforms: [.iOS(.v13), .visionOS(.v1)],
    products: [
        .library(
            name: "FFmpeg-iOS",
            targets: [
                "avcodec", "avutil", "avformat", "avfilter", "avdevice", "swscale", "swresample",
                "fftools", "Dummy",
            ]),
    ],
    dependencies: [
        .package(url: "https://github.com/robbyhyl/FFmpeg-iOS-Support", from: "0.0.1"),
    ],
    targets: [
        .binaryTarget(name: "avcodec", url: "https://github.com/kewlbear/FFmpeg-iOS/releases/download/v1.0.0/avcodec.zip", checksum: "c1faaedb20fc6ccf259050ad25cd12899f592ea928abcb7c1311d76b7ae4a7ff"),
        .binaryTarget(name: "avutil", url: "https://github.com/kewlbear/FFmpeg-iOS/releases/download/v1.0.0/avutil.zip", checksum: "5e346266cd6231fae7f78629c438730e9f5f76b653729e62e97b2e4457847d80"),
        .binaryTarget(name: "avformat", url: "https://github.com/kewlbear/FFmpeg-iOS/releases/download/v1.0.0/avformat.zip", checksum: "c2d87d6a6fe3962b1ed2b81739e640657ea2ea242c6fc497f73f39214b4538e0"),
        .binaryTarget(name: "avfilter", url: "https://github.com/kewlbear/FFmpeg-iOS/releases/download/v1.0.0/avfilter.zip", checksum: "db74377f79948411b657a4b3b5dee2c4bb8b4caf18dd61da7fa8c56b169d7fbb"),
        .binaryTarget(name: "avdevice", url: "https://github.com/kewlbear/FFmpeg-iOS/releases/download/v1.0.0/avdevice.zip", checksum: "188090061449373ce967f44828dd88a516faf39c0a216e170b7f7b3540cfbee2"),
        .binaryTarget(name: "swscale", url: "https://github.com/kewlbear/FFmpeg-iOS/releases/download/v1.0.0/swscale.zip", checksum: "c4cda5f49bdc176617e2302e236dde20ed039aa3e1a19a64b8ea21732f9298d5"),
        .binaryTarget(name: "swresample", url: "https://github.com/kewlbear/FFmpeg-iOS/releases/download/v1.0.0/swresample.zip", checksum: "ef17986ad721d7def33b0b0614a7dc425161668337ffb87b6dd4a216ad8d6056"),
        .binaryTarget(name: "fftools", url: "https://github.com/kewlbear/FFmpeg-iOS/releases/download/v1.0.0/fftools.zip", checksum: "3246a58827e9f1645941aee0bbf1bff8a893b034ddc5af819ac1f221de58bb3c"),
        .target(name: "Dummy", dependencies: [
            "fftools",
            "avcodec", "avformat", "avfilter", "avdevice", "avutil", "swscale", "swresample",
            "FFmpeg-iOS-Support",
        ]),
        .testTarget(name: "FFmpeg-iOSTests",
                    dependencies: ["Dummy",]),
    ]
)
