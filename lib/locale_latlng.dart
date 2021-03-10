import 'package:locale_latlng/latlng.dart';

import 'src/countries.g.dart';

/// Gets the country's location from its [countryCode].
///
/// The location data is extracted from : https://github.com/mledoze/countries.
LatLng? findLocation({required String countryCode}) =>
    countries[countryCode.toLowerCase()];
