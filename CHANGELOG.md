# Changelog

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
