import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';

const countriesDataUrl =
    'https://raw.githubusercontent.com/mledoze/countries/master/dist/countries.json';

Future<void> main() async {
  final dart = StringBuffer();
  dart.writeln('// GENERATED CODE (see tools directory)');
  dart.writeln();
  dart.writeln('import \'../latlng.dart\';');
  dart.writeln('');
  dart.writeln('const countries = {');

  final result = await get(Uri.parse(countriesDataUrl));
  final json = jsonDecode(result.body);
  for (var country in json) {
    // code ISO 3166-1 alpha-2
    final code = country['cca2'] as String?;
    if (code != null) {
      //latitude and longitude
      final latlng = country['latlng'];
      if (latlng != null && latlng.length == 2) {
        final lat = latlng[0] as num;
        final lng = latlng[1] as num;
        dart.writeln(
            '  \'${code.toLowerCase()}\': LatLng(${lat.toStringAsFixed(4)}, ${lng.toStringAsFixed(4)}),');
      }
    }
  }

  dart.writeln('};');

  await File('lib/src/countries.g.dart').writeAsString(dart.toString());
}
