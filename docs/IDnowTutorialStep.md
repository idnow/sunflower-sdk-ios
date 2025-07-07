# IDnowTutoarialStep

`IDnowTutoarialStep` is a UI component designed to be used for indicating step-by-step instructions on the screen. It consists of an optional large step index indicator, a Lottie animation and two text labels for the title and description.

## Usage
### Configuration
```
let myLottieConfiguration = IDnowLottieConfiguration(lottieName: "MyLottie", lottieBundle: Bundle.main)

myTutorial.configure(IDnowTutorialConfiguration(
    stepNumber: 1,
    lottieConfig: myLottieConfiguration,
    lottieSize: CGSize(width: 30, height: 30),
    title: "Step 1",
    description: "Step 1 description",
    indicatorStyle: TutorialNumberIndicatorStyle.large
))
```

## Public Properties
| Property name | Type | Description |
| --- | --- | --- |
| lottieView | IDnowLottie | The animation outlet accessible outside to customize it and to perform action (play, stop, pause...) |
## Functions

### Fields/Configuration

Tutorial step is configured by the ```IDnowTutorialConfiguration```. The same fields can be set separately on the componet instance.


| Variable name  | Type | Visual rendering | Description |
| --- | --- | --- | --- |
| stepNumber | Int | - | Step number to be displayed either as a large text on the left or as a part of the title depending on the```indicatorStyle```. Default: *1* |
| lottieConfig | IDnowLottieConfiguration | - | Configuration for the inner ```IDnowLottie``` used to set the required animation. |
| lottieSize | CGSize? | - | Applies a custom size to the Lottie animation view. |
| title | String? | - | Text to be displayed as a title of the tutorial step. |
| description | String? | - | Text to be displayed as a description of the tutorial step. |
| indicatorStyle | TutorialNumberIndicatorStyle | ![large](./img/IDnowTutorialStep/large_indicator.png){width=300}<br />![small](./img/IDnowTutorialStep/small_indicator.png){width=300} | PossibleValues:<br />**-large** (*default*)<br />**-inline** <br><br>Sets the position of the step number. |
