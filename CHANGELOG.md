# Changelog

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
