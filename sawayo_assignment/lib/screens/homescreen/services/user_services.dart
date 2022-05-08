import 'package:http/http.dart' as http;

class UserServices {
  Future<String> get(String host, String endpoint) async {
    var url = Uri.https(host, endpoint);
    var response = await http.get(url);

    if(response.statusCode == 200){
      return response.body;
    }

    return '';
  }
}