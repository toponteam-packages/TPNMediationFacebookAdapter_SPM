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
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/TPN_Release/iosnetwork_2/AnyThinkFacebookAdapter/6.22.0.2.9/AnyThinkFacebookAdapter-6.22.0.2.9.zip",
            checksum: "b0504226814884507a26cb68a6a67c2ddd1988b8bd20a316f32799650ee0ab23"
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
