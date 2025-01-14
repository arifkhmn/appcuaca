import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:appcuaca/provider/cuaca_provider.dart';
import 'package:appcuaca/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CuacaProvider>(
          create: (context) => CuacaProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
