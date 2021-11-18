import 'package:http/http.dart';

abstract class IpGeoLocationIOException implements Exception {
  final String description;
  const IpGeoLocationIOException({
    required this.description,
  });
}

class IpGeoLocationNetworkException extends IpGeoLocationIOException {
  final int code;
  const IpGeoLocationNetworkException({
    required this.code,
    required String description,
  }) : super(description: description);

  IpGeoLocationNetworkException.fromResponse(Response response)
      : code = response.statusCode,
        super(
          description: '''Network failure: 
        ${response.reasonPhrase}
        
        ${response.body}
        ''',
        );
}
