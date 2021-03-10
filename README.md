# locale_latlng

Get country geocoordinates from a user locale, when geolocation isn't authorized.

## Usage

```dart
import 'package:locale_latlng/locale_latlng.dart';

final latlng = findLocation(countryCode: 'fr');
print('France: ${latlng.latitude}, ${latlng.longitude}');
```
