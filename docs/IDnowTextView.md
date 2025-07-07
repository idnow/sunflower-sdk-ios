# IDnowTextView
`IDnowTextView` is a view that contains an UITextView. This view can be configured to detect when the user taps a link, a phone number, an e-mail address or a physical address.

## Usage
### Configuration
```
myTextView.configure(IDnowTextViewConfiguration(
    contentText: "My text content",
    textColor: IDnowTextColor.body,
    textStyle: IDnowTextStyles.body,
    textAlignment: .center,
    dataDetectors: [UIDataDetectorTypes] = [],
    delegate: IDnowTextViewActionsDelegate? = nil
))
```

### Methods
```
extension MyViewController: IDnowTextViewActionsDelegate {
    func onLinkTap(sender: IDnowTextView, link: URL) {
        // Action on link tap inside text view
    }
}
```

## Properties
| Variable name | Type | Description |
| --- | --- | --- |
| contentText | String? | TextView text value. |
| textColor | IDnowTextColor | Possible values :<br> - **body** *(default value)*<br>- **heading** <br><br> Sets the text color. |
| textStyle | IDnowTextStyles  | Possible values : <br>- **body** *(default value)*<br>- **h1**<br>- **h2**<br>- **h3**<br>- **h4**<br>- **h5**<br>- **h6**<br>- **linksLarge**<br>- **links**<br>- **linksSmall**<br>- **bodyLarge**<br>- **bodySmall**<br>- **bodyBoldLarge**<br>- **bodyBold**<br>- **bodyBoldSmall**<br><br>Sets the text style of the label.
| textAlignment | NSTextAlignment  | Possible values (NSTextAlignment) :<br> - **left** <br>- **center** <br>- **right**<br>- **justified**<br>- **natural** *(default value)*<br><br> Sets the text alignment. |
| dataDetectors | [UIDataDetectorTypes]  | Types of information to detect. |
| delegate | IDnowTextViewActionsDelegate?  | Delegate called when the user taps an URL. |
| **Margins** | - | - |
| marginTop<br> marginBottom <br> marginLeft <br> marginRight | String  | Possible values (*IDnowSpacingToken*) : <br> - **noSpacing** *(default value)* <br>- **secondary** <br>- **spacingXs** <br>- **spacingSm** <br>- **spacingMd** <br>- **spacingLg** <br>- **spacingXl** <br>- **spacing2xl** <br>- **spacing3xl** <br><br> In order to add margins around the component, you can use IDnowSpacingToken to keep your application consistent (set all constraints to 0 in the storyboard). |

## Functions

### Configuration
To configure the IDnowTextView, it is possible either to set the variables in the code one by one, or to use the [configuration protocol](./View%20Configuration.md).

| Name | Type | Description |
| --- | --- |--- |
| contentText | String? | TextView text value. 
| textColor | IDnowTextColor | Text color. 
| textStyle | IDnowTextStyles  | Text style.
| textAlignment | NSTextAlignment  | Text alignment. 
| dataDetectors | [UIDataDetectorTypes]  | Types of information to detect. 
| delegate | IDnowTextViewActionsDelegate?  | Delegate called when the user taps an URL. |
