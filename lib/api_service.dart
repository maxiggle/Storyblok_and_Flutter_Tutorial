import 'dart:developer';
import 'package:flutterstorybloktutorial/api_response.dart';
import 'package:flutterstorybloktutorial/models.dart';
import 'package:http/http.dart' as http;

class ApiService {
  // Story story = Story(stories: []);

  Future<Story?> getData() async {
    try {
      var url = Uri.parse(ApiResponse.api);
      var response = await http.get(url);
      log('api response :${response.body}');
      if (response.statusCode == 200) {
        final responseData = Story.fromRawJson(response.body);
        log('hi, $responseData');
        // story = responseData;
      }
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
