import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:flutter_id_datetime_formatter/flutter_id_datetime_formatter.dart';

void main() {
  setUpAll(() async {
    await initializeDateFormatting('id_ID', null);
  });

  test('formatTanggalPendek should return correct short format', () {
    final date = DateTime(2025, 8, 24);
    final result = formatTanggalPendek(date);
    expect(result, '24 Agu 2025');
  });

  test('formatTanggal should return full format', () {
    final date = DateTime(2025, 8, 24, 8, 0);
    final result = formatTanggal(date);
    expect(result.contains('24 Agu 2025'), true);
  });

  test('formatTanggalIndonesia should contain timezone label', () {
    final date = DateTime(2025, 8, 24, 8, 0);
    final result = formatTanggalIndonesia(date);
    expect(
      result.contains('WIB') ||
          result.contains('WITA') ||
          result.contains('WIT'),
      true,
    );
  });
}
