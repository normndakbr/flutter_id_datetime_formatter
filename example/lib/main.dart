import 'package:flutter_id_datetime_formatter/flutter_id_datetime_formatter.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  // Wajib gini DateFormat('id_ID') biar gak error
  await initializeDateFormatting('id_ID', null);
  final now = DateTime.now();

  print('formatTanggal: ${formatTanggal(now)}');
  print('formatTanggalPendek: ${formatTanggalPendek(now)}');
  print('formatTanggalIndonesia: ${formatTanggalIndonesia(now)}');
}
