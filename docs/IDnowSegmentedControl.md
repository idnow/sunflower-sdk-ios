# IDnowSegmentedControlView

`IDnowSegmentedControlView` is a subclass of the UISegmentedControl with a custom appearance. <br />
Important: icons can only be set via ```func setupImages(_ images: [UIImage], imageSize: CGSize = CGSize(width: 20, height: 20))``` and do not work  through the storyboard configuration.

## Usage
### Configuration
With texts
```
let myTexts = ["First", "Second", "Third"]()
mySegmentedControl.setupTexts(myTexts)
```
With images
```
let myImages = [IDnowIcon.wifiOn.image, IDnowIcon.wifiOff.image]
mySegmentedControl.setupImages(myImages, imageSize: CGSize(width: 20, height: 20))
```

## Properties

This element has no custom properties. All the properties of a regular [UISegmentedControl](https://developer.apple.com/documentation/uikit/uisegmentedcontrol) are available.

### Appearance

![](img/IDnowSegmentedControl/control.png "Segmented control"){width=300}
