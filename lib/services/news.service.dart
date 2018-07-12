import 'dart:async';
import 'package:http/http.dart' as http;

class HomePage {
  Future<http.Response> fetchData(String apiSecret) {
    return http.get(url)
  }
}