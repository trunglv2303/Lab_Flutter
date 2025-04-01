import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  final String url;

  NetworkHelper(this.url);

  Future getData() async {
    Uri uri = Uri.parse(url); // Chuyển String thành Uri hợp lệ
    http.Response response = await http.get(uri);

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      print('Lỗi HTTP: ${response.statusCode}');
      return null;
    }
  }
}
