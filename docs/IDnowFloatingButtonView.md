# IDnowFloatingButtonView

Add a UIView type object to your storyboard and apply the `IDnowFloatingButtonView` class to it.

## Usage
### Configuration
```
myFloatingButtonView.configure(IDnowButtonConfiguration(
    style: IDnowButtonStyle.primary,
    title: "My title",
    isButtonEnabled: true,
    isLoading: false,
    leftIcon: nil,
    rightIcon: nil,
    hasExternalBorder: true
))
```
### Methods
```
myFloatingButtonView.touchUpInside = { [weak self] in
    // My Action
}
```

## Properties

IDnowFloatinButton inherits from **IDnowButtonView**, so it has all the properties of its parent.

| Variable name | Type | Visual rendering | Description |
| --- | --- | --- | --- |
| floatingIcon | UIImage? | ![floating button](img/IDnowButton/floating.png "Floating"){width=200} | Add an icon in the button. |
| hasExternalBorder | Bool? | ![floating button external border](img/IDnowButton/floating_external_border.png "Floating external border"){width=100}  | Possible values :<br> - **true** <br>- **false** *(default value)* <br><br>Add external border arround the button. |