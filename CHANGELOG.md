## [0.0.1]

- Initial release 🎉
- Added `formatTanggal`, `formatTanggalPendek`, and `formatTanggalIndonesia`
- Auto timezone detection (WIB/WITA/WIT)

## [0.0.2]

- Removed dependency on `indonesian_timezone`.
- Now detects WIB/WITA/WIT automatically from `DateTime.timeZoneOffset`.
- Refactored `getIndonesianTimezoneLabel()` into standalone function.