# AdsEyeAdMob Swift Package

AdsEye AdMob 聚合 Adapter `1.4.21`。

## 通过 Xcode 接入

1. 选择 **File > Add Package Dependencies...**。
2. 输入 `https://github.com/AdsEye/AdsEyeSDK-AdMob.git`。
3. Dependency Rule 选择 **Exact Version**，填写 `1.4.21`。
4. 将 product `AdsEyeAdMob` 添加到媒体 App target。

`AdsEyeAdSDK` Core 和所需基础 SDK 已由本 Package 自动声明，无需手动重复添加。

## Linker setting

媒体 App target 的 **Other Linker Flags** 必须包含：

```text
-ObjC
```
