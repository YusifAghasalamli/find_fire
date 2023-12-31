import 'dart:convert';

Map<String, double> predictFromJson(String str) => Map.from(json.decode(str))
    .map((k, v) => MapEntry<String, double>(k, v?.toDouble()));

String predictToJson(Map<String, double> data) =>
    json.encode(Map.from(data).map((k, v) => MapEntry<String, dynamic>(k, v)));
