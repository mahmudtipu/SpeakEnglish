import 'package:speakenglish/page/simple_appbar_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.purple,
    ),
    home: MainPage(title: '',),
  );
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) => Scaffold(
    body: SimpleAppBarPage(),
    floatingActionButton: FloatingActionButton.extended(
      onPressed: () {
        // Add your onPressed code here!
      },
      label: const Text('Speak English'),
      icon: const Icon(Icons.call),
      backgroundColor: Colors.pink,
    ),
  );
}