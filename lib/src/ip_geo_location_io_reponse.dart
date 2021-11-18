import 'dart:convert';

class IpGeoLocationIOResponse {
  final String ip;
  final String? hostName;
  final String continentCode;
  final String continentName;
  final String countryCode2;
  final String countryCode3;
  final String countryName;
  final String countryCapital;
  final String stateProv;
  final String district;
  final String city;
  final String zipCode;
  final double latitude;
  final double longitude;
  final bool isEu;
  final String callingCode;
  final String? countryLtd;
  final List<String> languages;
  final String countryFlag;
  final String geonameId;
  final String isp;
  final String? connectionType;
  final String? organization;
  final String? asn;
  final Currency currency;
  final TimeZone timeZone;
  const IpGeoLocationIOResponse({
    required this.ip,
    required this.hostName,
    required this.continentCode,
    required this.continentName,
    required this.countryCode2,
    required this.countryCode3,
    required this.countryName,
    required this.countryCapital,
    required this.stateProv,
    required this.district,
    required this.city,
    required this.zipCode,
    required this.latitude,
    required this.longitude,
    required this.isEu,
    required this.callingCode,
    required this.countryLtd,
    required this.languages,
    required this.countryFlag,
    required this.geonameId,
    required this.isp,
    required this.connectionType,
    required this.organization,
    required this.asn,
    required this.currency,
    required this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return {
      'ip': ip,
      'hostname': hostName,
      'continent_code': continentCode,
      'continent_name': continentName,
      'country_code2': countryCode2,
      'country_code3': countryCode3,
      'country_name': countryName,
      'country_capital': countryCapital,
      'state_prov': stateProv,
      'district': district,
      'city': city,
      'zipcode': zipCode,
      'latitude': latitude,
      'longitude': longitude,
      'is_eu': isEu,
      'calling_code': callingCode,
      'country_ltd': countryLtd,
      'languages': languages,
      'country_flag': countryFlag,
      'geoname_id': geonameId,
      'isp': isp,
      'connection_type': connectionType,
      'organization': organization,
      'asn': asn,
      'currency': currency.toMap(),
      'time_zone': timeZone.toMap(),
    };
  }

  factory IpGeoLocationIOResponse.fromMap(Map<String, dynamic> map) {
    return IpGeoLocationIOResponse(
      ip: map['ip'],
      hostName: map['hostname'],
      continentCode: map['continent_code'],
      continentName: map['continent_name'],
      countryCode2: map['country_code2'],
      countryCode3: map['country_code3'],
      countryName: map['country_name'],
      countryCapital: map['country_capital'],
      stateProv: map['state_prov'],
      district: map['district'],
      city: map['city'],
      zipCode: map['zipcode'],
      latitude: double.parse(map['latitude']),
      longitude: double.parse(map['longitude']),
      isEu: map['is_eu'],
      callingCode: map['calling_code'],
      countryLtd: map['country_ltd'],
      languages: (map['languages'] as String).split(','),
      countryFlag: map['country_flag'],
      geonameId: map['geoname_id'],
      isp: map['isp'],
      connectionType: map['connection_type'],
      organization: map['organization'],
      asn: map['asn'],
      currency: Currency.fromMap(map['currency']),
      timeZone: TimeZone.fromMap(map['time_zone']),
    );
  }

  String toJson() => json.encode(toMap());

  factory IpGeoLocationIOResponse.fromJson(String source) =>
      IpGeoLocationIOResponse.fromMap(json.decode(source));

  @override
  String toString() {
    return 'IpGeoLocationIOResponse(ip: $ip, hostName: $hostName, continentCode: $continentCode, continentName: $continentName, countryCode2: $countryCode2, countryCode3: $countryCode3, countryName: $countryName, countryCapital: $countryCapital, stateProv: $stateProv, district: $district, city: $city, zipCode: $zipCode, latitude: $latitude, longitude: $longitude, isEu: $isEu, callingCode: $callingCode, countryLtd: $countryLtd, languages: $languages, countryFlag: $countryFlag, geonameId: $geonameId, isp: $isp, connectionType: $connectionType, organization: $organization, asn: $asn, currency: $currency, timeZone: $timeZone)';
  }
}

class Currency {
  final String code;
  final String name;
  final String symbol;

  const Currency({
    required this.code,
    required this.name,
    required this.symbol,
  });

  Map<String, dynamic> toMap() {
    return {
      'code': code,
      'name': name,
      'symbol': symbol,
    };
  }

  factory Currency.fromMap(Map<String, dynamic> map) {
    return Currency(
      code: map['code'],
      name: map['name'],
      symbol: map['symbol'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Currency.fromJson(String source) =>
      Currency.fromMap(json.decode(source));

  @override
  String toString() => 'Currency(code: $code, name: $name, symbol: $symbol)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Currency &&
        other.code == code &&
        other.name == name &&
        other.symbol == symbol;
  }

  @override
  int get hashCode => code.hashCode ^ name.hashCode ^ symbol.hashCode;

  Currency copyWith({
    String? code,
    String? name,
    String? symbol,
  }) {
    return Currency(
      code: code ?? this.code,
      name: name ?? this.name,
      symbol: symbol ?? this.symbol,
    );
  }
}

class TimeZone {
  final String name;
  final int offset;
  final DateTime currentTime;
  final bool isDst;
  final int dstSavings;

  const TimeZone({
    required this.name,
    required this.offset,
    required this.currentTime,
    required this.isDst,
    required this.dstSavings,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'offset': offset,
      'current_time': currentTime.millisecondsSinceEpoch,
      'is_dst': isDst,
      'dst_savings': dstSavings,
    };
  }

  factory TimeZone.fromMap(Map<String, dynamic> map) {
    return TimeZone(
      name: map['name'],
      offset: map['offset'],
      currentTime: DateTime.parse(map['current_time']),
      isDst: map['is_dst'],
      dstSavings: map['dst_savings'],
    );
  }

  String toJson() => json.encode(toMap());

  factory TimeZone.fromJson(String source) =>
      TimeZone.fromMap(json.decode(source));

  @override
  String toString() {
    return 'TimeZone(name: $name, offset: $offset, currentTime: $currentTime, isDst: $isDst, dstSavings: $dstSavings)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TimeZone &&
        other.name == name &&
        other.offset == offset &&
        other.currentTime == currentTime &&
        other.isDst == isDst &&
        other.dstSavings == dstSavings;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        offset.hashCode ^
        currentTime.hashCode ^
        isDst.hashCode ^
        dstSavings.hashCode;
  }

  TimeZone copyWith({
    String? name,
    int? offset,
    DateTime? currentTime,
    bool? isDst,
    int? dstSavings,
  }) {
    return TimeZone(
      name: name ?? this.name,
      offset: offset ?? this.offset,
      currentTime: currentTime ?? this.currentTime,
      isDst: isDst ?? this.isDst,
      dstSavings: dstSavings ?? this.dstSavings,
    );
  }
}
