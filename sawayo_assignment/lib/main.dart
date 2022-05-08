import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:sawayo_assignment/locator.dart';
import 'package:sawayo_assignment/phraseapp.dart';
import 'package:sawayo_assignment/screens/homescreen/view/home.dart';
import 'package:sawayo_assignment/screens/homescreen/viewmodel/user_view_model.dart';

void main() {
  setup();
  runApp(
    ChangeNotifierProvider(
      create: (context) => UsersViewModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    var appBarTitle = locator.get<PhraseApp>().appBarTitle;

    return MaterialApp(
      title: appBarTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
