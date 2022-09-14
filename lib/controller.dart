import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import 'api.dart';


class Controller extends GetxController {
  var questionList = <Questions>[].obs;

  Future fetchQuestions() async{
    await http.Client().get(
      Uri.parse('https://usamasarwar.github.io/assessment-api/api.json'),
      headers: {"Accept": "application/json"},
    ).then((response) {
      if (response.statusCode.isEqual(200)){
       questionList.value =    Questions.fromJson(response.body as Map<String, dynamic>) as List<Questions> ; 
      } else{
        Get.showSnackbar(
          GetSnackBar(
            title: "something got wrong",
            message: "API status code: ${response.statusCode}",
          )
        );
        throw Exception("failed to load users");
      }
    });
  }
}
