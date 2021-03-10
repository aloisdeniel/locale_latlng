# locale_latlng

Get latitude and longitude from a country code.

## Usage

```dart
import 'package:locale_latlng/locale_latlng.dart';

final latlng = findLocation(countryCode: 'fr');
print('France: ${latlng.latitude}, ${latlng.longitude}');
```
