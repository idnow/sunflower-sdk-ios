# IDnowLabel

`IDnowLabel`is a simple UILabel with specific style.

## Usage
### Configuration
```
myLabel.configure(IDnowLabelConfiguration(
    textStyle: IDnowTextStyles.body,
    text: "My label",
    textColor: IDnowTextColor.body,
    textAlignment: NSTextAlignment.natural
))
```

## Properties/Configuration

| Variable name | Type | Description |
| --- | --- | --- |
| textStyle | IDnowTextStyles | Possible values :<br> All values of **IDnowTextStyles** (h1, h2,h3, ...). *Default is **body*** <br><br> Set the text style of the label. |
| text | String? | Label text value |
| textColor | IDnowTextColor | Possible values (IDnowTextColor) :<br> - **heading** <br>- **body** *(default value)* <br><br> Set the text color.   
| textAlignment | NSTextAlignment | Possible values (NSTextAlignment) :<br> - **left** <br>- **center** <br>- **right**<br>- **justified**<br>- **natural** *(default value)*<br><br> Set the text alignment. |
| **Margins** | - | - |
| marginTop<br> marginBottom <br> marginLeft <br> marginRight | String  | Possible values (*IDnowSpacingToken*) : <br> - **noSpacing** *(default value)* <br>- **secondary** <br>- **spacingXs** <br>- **spacingSm** <br>- **spacingMd** <br>- **spacingLg** <br>- **spacingXl** <br>- **spacing2xl** <br>- **spacing3xl** <br><br> In order to add margins around the component, you can use IDnowSpacingToken to keep your application consistent (set all constraints to 0 in the storyboard). |
