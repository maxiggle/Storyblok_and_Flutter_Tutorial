import 'dart:developer';

import 'package:flutterstorybloktutorial/api_response.dart';
import 'package:flutterstorybloktutorial/models.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Storyblok storyblok = Storyblok(stories: []);

  Future<Storyblok?> getData() async {
    try {
      var url = Uri.parse(ApiResponse.baseUrl);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        // final responseData = Storyblok.fromJson(response.body);
        print(response.body);
        // storyblok = responseData;
      }
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
