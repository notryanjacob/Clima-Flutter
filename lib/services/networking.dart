import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  final String url;
  NetworkHelper(this.url);

  Future getData() async {
    double latitude = 19;
    double long = 72.9;
    //String url1 ='https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$long&appid=$apiKey';

    http.Response response = await http.get(Uri.parse(url));
    String data = response.body;
    if (response.statusCode == 200) {
      return jsonDecode(data);

    } else {
      print(response.statusCode);
    }
  }
}
