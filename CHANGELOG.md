# Changelog

## [2.3.1] - 2026-11-26
### Added
- Icon set: `CardTilt`, `ElementPaste`, `ScanRectangle`, `SpecialCharacters`, `ZoomIn` and `ZoomOut` are now available through `IDnowIcon`, in both `SunflowerUIKit` and `SunflowerSwiftUI`.
- `IDnowLinkButton` (SwiftUI): the whole button, padding and empty space included, is now tappable (previously only the title and the icons reacted). A tap now triggers the action once instead of twice.
- `IDnowMessageView` (UIKit & SwiftUI): new `isLoading` property on `IDnowMessageViewConfiguration` (also settable directly on the UIKit `IDnowMessageView`), `false` by default. While it is `true`, a native loading spinner replaces the leading icon; the icon, if any, is restored when loading ends.
- `IDnowPinField` (SwiftUI): new `codeInputFirstAccessibilityLabel` property on `IDnowPinFieldConfiguration`, the first part of the VoiceOver label of the code area, describing the type of the field (e.g. "Verification code"). Defaults to the localized "Code".

### Changed
- `IDnowView` (SwiftUI): the default value of `IDnowViewConfiguration.headerPresentation` is now `.inline` (previously `.systemToolbar`). Pass `.systemToolbar` explicitly to render the header in the system navigation bar.
- `IDnowControl` (SwiftUI): the VoiceOver label now reads the title, then the description, then the error. A checked radio button no longer reads a hint, and the state is announced only when it actually changes.
- `IDnowHeader` (SwiftUI): VoiceOver reads the header from right to left (secondary button, primary button, recording view), with the left (close) button read last.

### Fixed
- `IDnowView` (SwiftUI): with the inline header (the `.inline` presentation, or the iOS 15 fallback), the empty system navigation bar is now hidden, removing the blank space above the header.
- `IDnowView` (SwiftUI): the space above the "powered by" logo is now exactly the expected padding. `IDnowViewController` (UIKit): no extra space is left under the content when the logo is hidden.
- `IDnowTutorialStep` (SwiftUI): without a description, the title is now vertically centered on the lottie.
- VoiceOver (SwiftUI):
  - `IDnowButton`, `IDnowLinkButton` and the `IDnowPdfViewer` re-upload button no longer read the "Button" trait twice.
  - `IDnowEntryButton`, `IDnowTagView` and `IDnowMessageView` are read as a single element. A double tap on an `IDnowEntryButton` triggers its action, or the right button action when it is the only one.
  - Decorative icons are no longer read in `IDnowModal`, `IDnowMessageView`, `IDnowTextField`, `IDnowSegmentedControl` (when the segment has a text) and the dropdown list. The dropdown search clear button now has a label.
  - `IDnowSegmentedControl` and `IDnowPdfMenuButton` no longer read extra "Button"/"Selected" traits on top of their label.
  - `IDnowDropdownTextField` and `IDnowDatePickerField` now read the error in their label and the bottom text as a hint, and are read as dimmed when disabled or processing. VoiceOver focus moves back to the field once an item is selected or the picker is dismissed (also on the `IDnowPhoneNumberTextField` country selector).
  - Dropdown items read "title, index of total" when the list has several items. A single autocomplete suggestion only reads its title.
  - `IDnowPinField` no longer reads the error twice.
  - `IDnowInfoView` popup: VoiceOver focus moves to the message when the popup appears, instead of re-reading the button that presented it.
  - `IDnowModal`: once the modal is dismissed, VoiceOver focus moves to the first element of the screen.

## [2.3.0] - 2026-11-05
### Added
- `IDnowPdfViewer` and `IDnowPdfMenuButton` are now available in SwiftUI, with the same features as UIKit (tabs, pagination, zoom, re-upload and expand buttons, `.default`/`.light` appearance). Re-upload and expand are reported through the `onReupload`/`onExpand` closures of `IDnowPdfViewerConfiguration`. `IDnowPdfDocument` and `IDnowPdfInterfaceStyle` are shared by both modules.
- `IDnowHeaderPresentation` (SwiftUI): choose between `.systemToolbar` (default) and `.inline`, via `IDnowViewConfiguration.headerPresentation`.

### Changed
- iOS min version is now 15.
- `IDnowView` (SwiftUI) now renders its header (back button, brand logo and trailing controls) through the **system navigation bar** by default, so the OS applies its own appearance (including the Liquid Glass chrome on iOS 26+) and positions the controls according to the device's safe areas. This requires the view to be embedded in a `NavigationStack`/`NavigationView`; use `IDnowViewConfiguration.headerPresentation = .inline` for screens without a navigation container (e.g. a plain `.sheet`). On iOS 15 the header falls back to the inline presentation automatically.
- `IDnowModal` (SwiftUI): `rightButtonFillsContainer` now also applies when the left button is visible. The left button keeps its intrinsic width and the right button takes the remaining space (previously the option was ignored as soon as a left button was set).
- `IDnowControl` (SwiftUI): the VoiceOver label now reads the error first, then the title and the description (Figma order).
- SwiftUI `#Preview`s are now compiled in debug builds only.
- `IDnowButton` (UIKit & SwiftUI): the primary button text color now follows the `primaryText` token (grey100 in light mode, grey900 in dark mode) and switches to its inverse only when the contrast with the background is too low. With the default theme, the text is now dark in dark mode.

### Fixed
- `IDnowModal` (SwiftUI): footer buttons with a long title now wrap instead of pushing the modal beyond the screen width.
- `IDnowControl` (SwiftUI): the border of a bordered control is now shown in the error color (2pt) when the control is in error.
- `IDnowText` (SwiftUI): HTML texts are now converted once and cached. The first conversion of a given HTML text is done right after the SwiftUI update instead of during it, removing the `AttributeGraph: cycle detected` warnings logged on screens showing HTML texts. The HTML cache also benefits UIKit `IDnowTextView` and `IDnowInfoView` links.
- `IDnowButton` (SwiftUI): Fix status not well updated.

## [2.2.3] - 2026-10-22
### Added
- `IDnowInfoView` (SwiftUI) now supports inline tappable links. Include HTML `<a href>` anchors in the configuration `text` and pass `onLinkTapped: ((URL) -> Void)?` to the initializer — the host owns opening the URL, mirroring the UIKit `IDnowInfoView.onLinkTapped`. Tappable links require iOS 15+; on iOS 14 the message renders as plain text without a tappable link.
- `IDnowCodeInputView` (UIKit) now supports SMS/Email one-time-code autofill via the QuickType bar (uses a single hidden `.oneTimeCode` field). The whole code fills at once and the keyboard dismisses on completion.
- `IDnowViewController` (UIKit) now exposes `rightHeaderSecondaryButton: UIButton?` (get-only) — public access to the header's right secondary button for accessibility (also available on `IDnowScreenHeaderView` as `rightSecondaryButton`).

### Fixed
- `IDnowView` (SwiftUI) now applies a minimum top inset to the header when the system top safe-area inset is smaller than 10 pt, fixing the misplaced header when the view is presented as a modal sheet.

### Changed
- Smaller SDK: Release builds now compile with `-Osize` and strip non-global symbols.

## [2.2.2] - 2026-08-07
### Fixed
- Fix button text colors.
- Fix accessibility of IDnowInfoView (SwiftUI)

## [2.2.1] - 2026-07-21
### Changed
- Renamed the `DefaultPrimitives.defaultWeigth`/`prominentWeigth` typo to `defaultWeight`/`prominentWeight` (also affects the default parameters of the `IDnowFontWeight` initializer).

### Fixed
- `IDnowLottieController` playback (`play(...)`) requested before an asynchronous `.lottie`/DotLottie animation has finished loading is now deferred and replayed automatically once the animation is ready, instead of being silently dropped.
- `IDnowLottie` now reloads its animation when `lottieSource` changes at runtime, keeping the current animation visible while the new one loads.

## [2.2.0] - 2026-07-20
### Added
- Support for RedHatDisplay fonts
- New IDnow primitive colors
