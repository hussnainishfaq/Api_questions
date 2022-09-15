// ignore_for_file: invalid_use_of_protected_member
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_view/controller.dart';

void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final Controller _controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'API',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Assesment'),
        ),
        body: FutureBuilder(
          future: _controller.fetchQuestions(),
          builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return ListView.builder(
                itemCount: _controller.questionList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    // subtitle: Text(_controller.questionList.values.elementAt(index).toString()),
                    title: Text(_controller.questionList.keys.elementAt(index).toString()),
                  );
                });
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        }),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _controller.fetchQuestions();
            setState(() {});
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
