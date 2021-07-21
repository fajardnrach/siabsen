import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simas/widget/home/home_bloc.dart';
import 'package:simas/widget/home/home_page.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // customize app theme here
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<HomeBloc>(
          create: (context) => HomeBloc(),
          child: MyHomePage(title: 'Flutter Demo Home Page')),
    );
  }
}
