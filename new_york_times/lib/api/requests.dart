import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchNYTData() async {
  final response = await http.get(Uri.parse('https://api.nytimes.com/svc/news/v3/content/all/all.json?api-key=3XdEX34GAphIu6ABBP08cCtOh8DBxubC'));

  if (response.statusCode == 200) {
    var jsonResponse = jsonDecode(response.body);
    List<dynamic> titles = [];
    List<dynamic> abstracts = [];
    List<dynamic> images = [];

    for (var result in jsonResponse['results'].take(4)) {
      titles.add(result['title']);
      abstracts.add(result['abstract']);
      images.add(result['multimedia'][0]['url']);
    }

    print('Titles: $titles');
    print('Abstracts: $abstracts');
    print('Images: $images');
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}
