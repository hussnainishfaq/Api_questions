// ignore_for_file: invalid_use_of_protected_member
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_view/controller.dart';

void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}

class App extends StatelessWidget {
  App({super.key});
  final Controller _controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'API',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Questions & Answers',
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.black,
        body: FutureBuilder(
          future: _controller.fetchQuestions(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Obx(
                () => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                    itemCount: _controller.questionList.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          trailing: const Text('data'),
                          leading: Text(_controller
                              .questionList[index].api[index].question),
                        ),
                      );
                    },
                  ),
                ),
              );
            }
            throw Exception('Something went wrong');
          },
        ),
      ),
    );
  }
}
