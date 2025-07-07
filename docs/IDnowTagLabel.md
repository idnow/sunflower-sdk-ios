# IDnowTagLabel

`IDnowTagLabel` is an UIlabel subclass for displaying small tags with one line of text. The maximum width of the tag is 130.

## Usage
### Configuration
```
myTag.configure(IDnowTagLabelConfiguration(
    type: IDnowInfoType.info, 
    showIndicator: true, 
    icon: IDnowIcon.camera
))
```

## Properties
| Variable name | Type   | Visual rendering | Description |
| --- | --- | --- | --- |
| type | IDnowInfoType | ![Tag type](img/IDnowTagLabel/types.png "Tag types"){width=300} | Possible values:<br />**- info**(*default*) <br />**- warning** <br />**- success** <br />**- error** |
| showIndicator | Bool | ![Indicator](img/IDnowTagLabel/indicator.png "Tag with indicator"){width=200} | Toggle circle indicator visibility. Default value:*false* |
| icon | IDnowIcon? | ![Tag icon](img/IDnowTagLabel/icon.png "Tag with icon"){width=200} | Displays an icon before the tag text. |
