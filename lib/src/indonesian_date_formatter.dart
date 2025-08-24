import 'package:intl/intl.dart';


String formatTanggal(DateTime dateTime) {
  return DateFormat('dd MMM yyyy, HH:mm', 'id_ID').format(dateTime);
}

String formatTanggalIndonesia(DateTime dateTime) {
  final tanggal = DateFormat('dd MMMM yyyy', 'id_ID').format(dateTime);
  final jam = DateFormat('HH.mm').format(dateTime);
  final zona = getIndonesianTimezoneLabel(dateTime);
  return '$tanggal, $jam $zona';
}

String namaBulan(int bulan) {
  const nama = [
    '',
    'Jan', 'Feb', 'Mar', 'Apr', 'Mei', 'Jun',
    'Jul', 'Agu', 'Sep', 'Okt', 'Nov', 'Des',
  ];
  return nama[bulan];
}

String formatTanggalPendek(DateTime date) {
  return '${date.day} ${namaBulan(date.month)} ${date.year}';
}

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
