import 'dart:convert';
import 'package:http/http.dart' as http;

class NetworkHelper{
  Uri uri;
  NetworkHelper(this.uri);
  Future getNetworkData() async {
    final http.Response response = await http.get(uri);
    String data = response.body;
    if (response.statusCode == 200) {
      return jsonDecode(data);
    }
    else {
      print(response.statusCode);
    }
  }
}
