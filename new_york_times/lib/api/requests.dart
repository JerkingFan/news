import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchNYTData() async {
  final response = await http.get(Uri.parse('https://api.nytimes.com/svc/search/v2/articlesearch.json?api-key=BrSKiRDPz9a6GVtkFZTrFHAg7ChR3U0F'));

  if (response.statusCode == 200) {
    var jsonResponse = jsonDecode(response.body);
    print(jsonResponse);
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}
