import 'package:ip_geolocation_io/src/ip_geo_location_io_exception.dart';
import 'package:ip_geolocation_io/src/ip_geo_location_io_reponse.dart';
import 'package:http/http.dart' as http;

class IpGeoLocationIO {
  final String _apiKey;

  const IpGeoLocationIO(this._apiKey);

  Future<IpGeoLocationIOResponse> getUserLocation() async {
    final uri = Uri(
      scheme: 'https',
      host: 'api.ipgeolocation.io',
      path: 'ipgeo',
      queryParameters: {'apiKey': _apiKey},
    );
    final response = await http.get(uri);
    if (response.statusCode != 200) {
      throw IpGeoLocationNetworkException.fromResponse(response);
    }
    final body = response.body;
    return IpGeoLocationIOResponse.fromJson(body);
  }
}
