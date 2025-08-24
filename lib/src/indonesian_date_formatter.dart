import 'package:intl/intl.dart';

/// Formats a full date in short Indonesian format (e.g. `24 Aug 2025, 21:30`).
///
/// Format used: `dd MMM yyyy, HH:mm`
///
/// [dateTime] is the [DateTime] object to format.
String formatTanggal(DateTime dateTime) {
  return DateFormat('dd MMM yyyy, HH:mm', 'id_ID').format(dateTime);
}

/// Formats a full Indonesian-style date with local timezone label (e.g. `24 August 2025, 21.30 WIB`).
///
/// Format used: `dd MMMM yyyy, HH.mm <timezone>`
///
/// [dateTime] is the [DateTime] object to format.
String formatTanggalIndonesia(DateTime dateTime) {
  final tanggal = DateFormat('dd MMMM yyyy', 'id_ID').format(dateTime);
  final jam = DateFormat('HH.mm').format(dateTime);
  final zona = getIndonesianTimezoneLabel(dateTime);
  return '$tanggal, $jam $zona';
}

/// Returns the abbreviated Indonesian month name.
///
/// [bulan] is the numeric month (1–12).
///
/// Example: `1` → `'Jan'`
String namaBulan(int bulan) {
  const nama = [
    '',
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'Mei',
    'Jun',
    'Jul',
    'Agu',
    'Sep',
    'Okt',
    'Nov',
    'Des',
  ];
  return nama[bulan];
}

/// Formats a short Indonesian date (e.g. `24 Aug 2025`).
///
/// [date] is the [DateTime] object to format.
String formatTanggalPendek(DateTime date) {
  return '${date.day} ${namaBulan(date.month)} ${date.year}';
}

/// Returns the Indonesian timezone label (WIB, WITA, WIT) based on the local [DateTime] offset.
///
/// [dateTime] is optional. If not provided, it defaults to [DateTime.now()].
///
/// Output: `'WIB'`, `'WITA'`, `'WIT'`, or `'GMT+/-X'` if outside Indonesian timezones.
String getIndonesianTimezoneLabel([DateTime? dateTime]) {
  final offset = (dateTime ?? DateTime.now()).timeZoneOffset;

  if (offset == const Duration(hours: 7)) {
    return 'WIB';
  } else if (offset == const Duration(hours: 8)) {
    return 'WITA';
  } else if (offset == const Duration(hours: 9)) {
    return 'WIT';
  } else {
    return 'GMT${offset.isNegative ? '' : '+'}${offset.inHours}';
  }
}
