import 'package:intl/intl.dart';
import 'package:indonesian_timezone/indonesian_timezone.dart';

String formatTanggal(DateTime dateTime) {
  return DateFormat('dd MMM yyyy, HH:mm', 'id_ID').format(dateTime);
}

String formatTanggalIndonesia(DateTime dateTime) {
  final local = dateTime.toLocal();
  final idtz = IdTimezone(date: dateTime);
  final offset = local.timeZoneOffset.inHours;
  final formatter = DateFormat('dd MMMM yyyy, HH:mm', 'id_ID');

  if (offset == 7) {
    final wib = idtz.toWIB();
    if (wib != null) return '${formatter.format(wib)} WIB';
  } else if (offset == 8) {
    final wita = idtz.toWITA();
    if (wita != null) return '${formatter.format(wita)} WITA';
  } else if (offset == 9) {
    final wit = idtz.toWIT();
    if (wit != null) return '${formatter.format(wit)} WIT';
  }

  return '${formatter.format(local)}';
}

String formatTanggalIndonesia2(DateTime dateTime) {
  final local = dateTime.toLocal();
  final idtz = IdTimezone(date: dateTime);
  final offset = local.timeZoneOffset.inHours;
  final formatter = DateFormat('dd MM yyyy, HH:mm', 'id_ID');

  if (offset == 7) {
    final wib = idtz.toWIB();
    if (wib != null) return '${formatter.format(wib)} WIB';
  } else if (offset == 8) {
    final wita = idtz.toWITA();
    if (wita != null) return '${formatter.format(wita)} WITA';
  } else if (offset == 9) {
    final wit = idtz.toWIT();
    if (wit != null) return '${formatter.format(wit)} WIT';
  }

  return '${formatter.format(local)}';
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
