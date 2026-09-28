// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "TPNMediationFacebookAdapter",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "TPNMediationFacebookAdapter",
            targets: ["TPNMediationFacebookAdapterTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/toponteam-packages/TPNiOS_SPM.git", from: "6.5.60"),
        .package(url: "https://github.com/facebook/FBAudienceNetwork.git", exact: "6.22.0")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkFacebookAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/TPN_Release/iosnetwork_2/AnyThinkFacebookAdapter/6.22.0.2.1/AnyThinkFacebookAdapter-6.22.0.2.1.zip",
            checksum: "a9c61f3495673b7f5e92ebc19de610d562458ce0971b8c8158b49ef064df1dd2"
        ),
        .target(
            name: "TPNMediationFacebookAdapterTarget",
            dependencies: [
                "AnyThinkFacebookAdapter",
                .product(name: "TPNiOS", package: "TPNiOS_SPM"),
                .product(name: "FBAudienceNetwork", package: "FBAudienceNetwork")
            ],
            path: "Sources/TPNMediationFacebookAdapterTarget"
        )
    ]
)
