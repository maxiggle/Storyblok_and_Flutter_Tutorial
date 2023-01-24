import 'dart:developer';
import 'package:flutterstorybloktutorial/api_response.dart';
import 'package:http/http.dart' as http;

import 'models/models.dart';

class ApiService {
  // Story story = Story(stories: []);

  Future<StoryblokResponse?> getData() async {
    try {
      var url = Uri.parse(ApiResponse.baseUrl);
      var response = await http.get(url);
      log('api response :${response.body}');
      if (response.statusCode == 200) {
        final responseData = StoryblokResponse.fromJson(response.body);

        return responseData;
      }
    } catch (e, s) {
      log('API error', error: e, stackTrace: s);
    }
    return null;
  }
}
