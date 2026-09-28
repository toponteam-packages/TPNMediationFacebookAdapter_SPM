# TopOn - iOS Meta Audience Network (Facebook) Mediation Adapter

The TopOn Meta Audience Network (Facebook) mediation adapter for iOS, distributed via Swift Package Manager.

## Requirements

- iOS 15.0+
- Xcode 15.0+
- TopOn iOS Core SDK (`TPNiOS`) 6.5.0+

## Installation

### Xcode

1. In Xcode, choose **File > Add Package Dependencies…**
2. Enter the repository URL:
   ```
   https://github.com/toponteam-packages/TPNMediationFacebookAdapter_SPM
   ```
3. Select **Exact Version** and enter the target version (e.g. `62200.2.1`).
4. Add the `TPNMediationFacebookAdapter` product to your app target.
5. In your target's **Build Settings**, add `-ObjC` to **Other Linker Flags**.

### Package.swift

```swift
dependencies: [
    .package(
        url: "https://github.com/toponteam-packages/TPNMediationFacebookAdapter_SPM.git",
        exact: "62200.2.1"
    )
]
```

## Included dependencies

- [`TPNiOS`](https://github.com/toponteam-packages/TPNiOS_SPM) (>= 6.5.0)
- [`FBAudienceNetwork`](https://github.com/facebook/facebook-ios-sdk) (pinned to the version certified for this adapter release)

## More information

- [TopOn iOS Integration Guide](https://docs.toponad.com)
