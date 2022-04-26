import 'dart:developer';
import 'dart:convert';
import 'package:listrik_statis/kuis/question.dart';
import 'package:http/http.dart' as httpGet;

class ApiTrivia {
  get http => null;

  Future<List<Results>?> getStates() async {
    Uri url = Uri.parse(
        "https://opentdb.com/api.php?amount=10&difficulty=easy&type=multiple");

    var response = await httpGet.get(url);
    if (response.statusCode == 200) {
      log('api worked ${response.body}');
      var body = response.body;
      var statesJsonArray = json.decode(body)['results'];

      try {
        List<Results> results =
            (statesJsonArray as List).map((e) => Results.fromJson(e)).toList();

        return results;
      } catch (e) {
        log('try failed $e');
      }
    } else {
      log('api request failed ${response.body}');

      return null;
    }
  }
}
