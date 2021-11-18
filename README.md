wrapper around https://ipgeolocation.io/ api to get the geolocation with an http request. Useful for when permissions are not granted.

## Features

  - Uses https://ipgeolocation.io/ as underlying API

## Getting started

 - Sign up at https://ipgeolocation.io/ and get api key
 - Use this library with the API key you just received

## Usage


```dart
import 'package:ip_geolocation_io/ip_geolocation_io.dart';

void main(List<String> arguments) async {
  if (arguments.isEmpty) {
    throw 'You must give your api key as first argument, get one at https://app.ipgeolocation.io/';
  }

  final apiKey = arguments.first;
  final geolocation = IpGeoLocationService(apiKey);
  final response = await geolocation.getUserLocation();
  print(response);
}
```