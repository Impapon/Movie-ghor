import 'package:flutter/material.dart';
import 'package:movies_ghor/page/home_page.dart';
import 'package:movies_ghor/page/movie_details_page.dart';
import 'package:movies_ghor/provider/movie_provider.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(ChangeNotifierProvider(
    create: (_)=>MovieProvider(),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName:(_)=>const HomePage(),
        MovieDetailsPage.routeName:(_)=>MovieDetailsPage(),

      },
    );
  }
}

