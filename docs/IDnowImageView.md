# IDnowImageView
`IDnowImageView` is a view that contains an UIImageView. 
This view is used to provide an image and an image tintColor to the imageView outlets.
Notes that it inherits from IDnowView, so the top, bottom, left and right margins can be set.
Color and icons are limited to IDnow ones.

## Usage
### Configuration
```
myImageView.configure(IDnowImageViewConfiguration(
    image: IDnowIcon.activity,
    imageTintColor: IDnowImageTintColor.primaryBackground
))
```

## Public Properties
| Property name | Type | Visual rendering | Description |
| --- | --- | --- | --- |
| imageTintColor | IDnowImageTintColor? | ![tint color 1](img/IDnowImageView/activity_color1.png "With header"){width=50}![tint color 2](img/IDnowImageView/activity_color2.png "With header"){width=50}| The image's tintColor which will be set on the imageView property. Optionnal, if nil, it will not apply any tint on the image. |
| image | IDnowIcon? | ![icons example](img/IDnowImageView/icons_list.png "With header"){width=50} | The asset to set on the UIImageView outlet. |

## Public IBOutlet
To deeply customize the `IDnowImageView`, we have access to the main UIImageView's outlet to setup its native properties.         

| Outlet name | Type | Description |
| --- | --- | --- |
| imageView | UIImageView! | The UIImageView corresponding to the content of this component. |

## Configuration
To configure the `IDnowImageView`, it is possible either to set the variables as described above, or to use the [configuration protocol](./View%20Configuration.md). In our case, the object is named `IDnowImageViewConfiguration`. See rendering in **Public Properties** section         

| Parameter name | Type | Description |
| --- | --- | --- |
| image | IDnowIcon? | The asset to set on the UIImageView outlet. 
| imageTintColor | IDnowImageTintColor?    | The image's tintColor which will be set on the imageView property. Optionnal, if nil, it will not apply any tint on the image. |

## Usage
In order to use `IDnowImageView`, you can simply call this view on your xib or storyboard and configure it as presented.
                                                                                                                                                                                                                                                                            
