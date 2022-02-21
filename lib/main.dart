import 'package:closet_fabi/app/shared/routes/app_routes.dart';
import 'package:closet_fabi/app/shared/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Closet da Fabi',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRouters.initial,
      theme: AppTheme(context).theme,
      routes: AppRouters.routers,
    );
  }
}
