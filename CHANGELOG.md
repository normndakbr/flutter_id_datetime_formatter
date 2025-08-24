## [0.0.3]

- Added dartdoc documentation for all public API functions.
- Improved pub.dev score (documentation & formatting).
- No functional changes; same API behavior as 0.0.2.

## [0.0.2]

- Removed dependency on `indonesian_timezone`.
- Now detects WIB/WITA/WIT automatically from `DateTime.timeZoneOffset`.
- Refactored `getIndonesianTimezoneLabel()` into standalone function.

## [0.0.1]

- Initial release 🎉
- Added `formatTanggal`, `formatTanggalPendek`, and `formatTanggalIndonesia`
- Auto timezone detection (WIB/WITA/WIT)