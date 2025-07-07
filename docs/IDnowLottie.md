# IDnowLottie

`IDnowLottie` is a view that contains a Lottie. If the lottie JSON is well configured, its colors will use the design system colors.

## Usage
### Configuration
```
myLottieView.configure(IDnowLottieConfiguration(
  lottieName: "MyLottieFileName",
  lottieBundle: Bundle.main,
  loopMode: IDnowLottieLoopMode.playOnce,
  lottieContentMode: .scaleAspectFit
))
```
### Methods
```
myLottieView.play {
  // Action after complete playing
}
```
```
myLottieView.play(fromFrame: 5, toFrame: 10) {
  // Action after complete playing
}
```
```
myLottieView.pause()
```
```
myLottieView.pause(at: 8)
```
```
myLottieView.stop()
```

## Properties
| Variable name | Type | Description |
| --- | --- | --- |
| loopMode | IDnowLottieLoopMode? | Possible values : <br>- **nil** *(default value)*<br>- **loop**<br>- **playOnce** <br>- **autoReverse** <br>- **repeat** <br>- **playOnce** <br>- **repeatBackwards** <br><br>Defines animation loop behavior. If nil, it will use *loop*. |
| lottieContentMode | UIView.ContentMod | Content mode applied to the lottie.<br><br>*Default value*: scaleAspectFit |
| isAnimationPlaying | Bool | Possible values: <br>- **true**<br>- **false**<br><br>Getter only. Returns `true` if the animation is currently playing. |
| **Margins** | - | - |
| marginTop<br> marginBottom <br> marginLeft <br> marginRight | String  | Possible values (*IDnowSpacingToken*) : <br> - **noSpacing** *(default value)* <br>- **secondary** <br>- **spacingXs** <br>- **spacingSm** <br>- **spacingMd** <br>- **spacingLg** <br>- **spacingXl** <br>- **spacing2xl** <br>- **spacing3xl** <br><br> In order to add margins around the component, you can use IDnowSpacingToken to keep your application consistent (set all constraints to 0 in the storyboard). |

## Functions

### Configuration
To configure the IDnowLottie, it is possible either to set the variables in the code one by one, or to use the [configuration protocol](./View%20Configuration.md).

| Name | Type | Description |
| --- | --- |--- |
| lottieName | String | Name of the Lottie file |
| lottieBundle | Bundle | Bundle of the Lottie file |
| loopMode | SunflowerLottieLoopMode? | Defines animation loop behavior |
| lottieContentMode | UIView.ContentMode | Content mode applied to the lottie<br><br>*Default value*: scaleAspectFit |

### Play
To play the lottie animation, you should call one of the two play methods:

#### play(completion:)
This function will play the animation. It will call the completion handler at the end of the animation.

| Name | Type | Description |
| ---           | ---     |---          |
| completion         | ((_ completed: Bool) -> Void)? | An optional completion closure to be called when the animation completes playing |

#### play(fromFrame: toFrame: completion:)
This function will play the animation, starting from the `fromFrame` parameter and stopping at the `toFrame`. It will call the completion handler at the end of the animation.

| Name | Type | Description |
| ---           | ---     |---          |
| fromFrame         | CGFloat? | The start frame of the animation. If `nil` the animation will start at the current frame. |
| toFrame         | CGFloat | The end frame of the animation |
| completion         | ((_ completed: Bool) -> Void)? | An optional completion closure to be called when the animation stops |

### Pause
#### pause()
A simple method to pause the animation at the current frame.

#### pause(at frame: CGFloat)
More complete method to pause the animation at the given frame of the animation.

### Stop
#### stop()
Stops the animation and resets the view to its start frame.