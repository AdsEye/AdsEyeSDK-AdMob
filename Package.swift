// swift-tools-version: 5.9
// 此文件由 AdsEye SPM 发布流程生成，请勿手工修改 URL 和 checksum。
import PackageDescription

let package = Package(
    name: "AdsEyeAdMob",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "AdsEyeAdMob", targets: ["AdsEyeAdMobLinker"])
    ],
    dependencies: [
        .package(url: "https://github.com/AdsEye/AdsEyeSDK.git", exact: "1.4.21"),
              .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", exact: "13.3.0")
    ],
    targets: [
        .target(
    name: "AdsEyeAdMobLinker",
    dependencies: [
        .product(name: "AdsEyeAdSDK", package: "adseyesdk"),
              .target(name: "AdsEyeAdmobAdapter"),
              .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads")
    ],
    linkerSettings: [
        .linkedFramework("UIKit"),
              .linkedFramework("Foundation"),
              .linkedFramework("Security"),
              .linkedFramework("StoreKit"),
              .linkedFramework("SystemConfiguration"),
              .linkedFramework("CoreTelephony"),
              .linkedFramework("AVKit"),
              .linkedFramework("AVFoundation"),
              .linkedFramework("CoreMedia"),
              .linkedFramework("DeviceCheck"),
              .linkedFramework("CoreMotion"),
              .linkedFramework("WebKit"),
              .linkedFramework("AdSupport"),
              .linkedLibrary("c++abi"),
              .linkedLibrary("sqlite3"),
              .linkedLibrary("c++"),
              .linkedLibrary("xml2"),
              .linkedLibrary("resolv"),
              .linkedLibrary("bz2"),
              .linkedLibrary("z")
    ]
),
              .binaryTarget(
    name: "AdsEyeAdmobAdapter",
    url: "https://cpc-static-docs.oss-cn-beijing.aliyuncs.com/adseye_sdk_ios/1.4.21/spm/AdsEyeAdmobAdapter-1.4.21-09101108.zip",
    checksum: "85e8e7d3cc2fbb67080923487b4761efd24ec00fdd585fa5d5ff1b9a92a143a6"
)
    ]
)
