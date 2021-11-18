import 'package:ip_geolocation_io/ip_geolocation_io.dart';

void main(List<String> arguments) async {
  if (arguments.isEmpty) {
    throw 'You must give your api key as first argument, get one at https://app.ipgeolocation.io/';
  }

  final apiKey = arguments.first;
  final geolocation = IpGeoLocationIO(apiKey);
  final response = await geolocation.getUserLocation();
  print(response);
}
