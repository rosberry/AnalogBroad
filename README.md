# Analog broad

[Butterbroad](https://github.com/rosberry/butterbroad/) aggreator for [Analog](https://github.com/rosberry/analog)

## Features

- Compatible with Butterbroad
- Easy getting started

## Requirements

- iOS 9.0+
- Xcode 8.0+

## Installation

#### Carthage
Create a `Cartfile` that lists the framework and run `carthage update`. Follow the [instructions](https://github.com/Carthage/Carthage#adding-frameworks-to-an-application) to add the framework to your project.

```
github "ntunin/AnalogBroad"
```
Add following frameworks from Carhage/Build/iOS folder:
- Analog.framework
- Butterbroad.framework
- AnalogBroad.framework
- AnyCodable.framework

### Manually

Drag `Sources` folder from [last release](https://github.com/rosberry/AnalogBroad/releases) into your project.

## Usage

#### Creating a broad

```swift
import ButterBroad
import AnalogBroad

extension Butter {
    static let analog: AnalogBroad = .init()
    static let common: Butter = .init(broads: analog)
}
```

#### logging

```swift
 Butter.common.logEvent(with: <SOME EVENT HERE>, params: <ADDITIONAL PARAMETERS HERE>)
```

## Authors

* Nikolay Tyunin, nikolay.tyunin@rosberry.com

## About

<img src="https://github.com/rosberry/Foundation/blob/master/Assets/full_logo.png?raw=true" height="100" />

This project is owned and maintained by [Rosberry](http://rosberry.com). We build mobile apps for users worldwide 🌏.

Check out our [open source projects](https://github.com/rosberry), read [our blog](https://medium.com/@Rosberry) or give us a high-five on 🐦 [@rosberryapps](http://twitter.com/RosberryApps).

## License

Product Name is available under the MIT license. See the LICENSE file for more info.
