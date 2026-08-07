# Sunflower - iOS


![SPM](https://img.shields.io/badge/SwiftPackageManager-2.2.2-blue) ![CocoaPod](https://img.shields.io/badge/CocoaPods-Not_supported-red) ![UIKit](https://img.shields.io/badge/UIKit-Supported-green) ![SwiftUI](https://img.shields.io/badge/SwiftUI-Supported-green)

<img src="docs/Common/img/logo.png" alt="Sunflower" title="Sunflower" width="150" height="150"/>

## Description

Welcome to the public Sunflower SDK. Sunflower is the IDnow Design System, a library of components higly customizable to match with client preferences. This SDK is directly used in many of our products.

## Setup

Sunflower is available via Swift Package Manager only. We do not support pods integration.

> ⚠️ Lottie is required to run Sunflower, it will be automatically imported.

### Swift Package Manager

```
Source : https://github.com/idnow/sunflower-sdk-ios

Exact version : <version_you_want>
```

## Customization

SunflowerUIKit and SunflowerSwiftUI have default values corresponding to the internal IDnow theme. 
If you want to use your own theme, you must add one of these imports to your file, depending on the Sunflower version you are using.

```swift
import SunflowerUIKit
```

or 

```swift
import SunflowerSwiftUI
```

Then you can create a theme with desired colors, radius and spacing.

```swift

// Choose your colors
let brandColors = BrandColors(
    primary: UIColor.orange,
    primaryVariant: UIColor.orange,
    secondary: UIColor.orange,
    secondaryVariant: UIColor.orange,
    error: UIColor.orange,
    processing: UIColor.orange,
    success: UIColor.orange,
    active: UIColor.orange
)
let greyColors = GreyColors(
    grey100: UIColor.gray,
    grey200: UIColor.gray,
    grey300: UIColor.gray,
    grey400: UIColor.gray,
    grey500: UIColor.gray,
    grey600: UIColor.gray,
    grey800: UIColor.gray,
    grey900: UIColor.gray
)
let customColors = IDnowColors(brand: brandColors, grey: greyColors)

// Define your radius
let customRadius = IDnowRadius(
    radius1: 8,
    radius2: 16,
    radius3: 24,
    radius4: 400
)

// Set your spacings
let customSpacing = IDnowSpacing(
    spacing0_5: 8,
    spacing1: 16,
    spacing2: 24,
    spacing3: 32,
    spacing4: 40,
    spacing5: 48,
    spacing6: 56
)

// Set your fonts
let customFont = SunflowerUIKit.IDnowFont(
    fontFamily: IDnowFontFamily(heading: [400: myRegularFont, 500: myMediumFont]),
    fontSize: IDnowFontSize(),
    fontWeight: IDnowFontWeight(default: 400, prominent: 500)
)

let primitives = IDnowPrimitives(
    colors: customColors, 
    radius: customRadius, 
    spacing: customSpacing,
    font: customFont
)
```

Then, you need to apply your custom theme like this
```swift
IDnowDesignSystem.shared.setup(primitives: primitives, isLightMode: true)
```
It needs to be done only one time, no need to do it each time you want to use a component.

## Components

Sunflower is composed of several components like custom text, button, textfields or views. It is available for UIKit and SwiftUI integration. 

### How to integrate UIKit
To integrate the Sunflower UIKit library, simply import the SDK like that.
```swift
import SunflowerUIKit
```
If you want to use the available components, you can find the documentation of each of our components inside the /docs folders. It describes the component and how to integrate it.

### How to integrate SwiftUI
To integrate the Sunflower SwiftUI library, simply import the SDK like that.
```swift
import SunflowerSwiftUI
```
If you want to use the available components, you can find the documentation of each of our components inside the /docs folders. It describes the component and how to integrate it.

### Tokens

In order for the application using the design system to be consistent, it is recommended to use tokens.

- IDnowColorsToken
- IDnowRadiusToken
- IDnowSpacingToken