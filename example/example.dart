import 'package:locale_latlng/locale_latlng.dart';

void main() {
  final latlng = findLocation(countryCode: 'fr');
  print('France: ${latlng!.latitude}, ${latlng.longitude}');
}
