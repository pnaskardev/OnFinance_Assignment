import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:onfinance_assignment/features/home/screens/home.dart';
import 'package:onfinance_assignment/features/home/screens/test.dart';
import 'package:onfinance_assignment/models/environment.dart';
import 'package:onfinance_assignment/providers/CryptProvider.dart';
import 'package:onfinance_assignment/utils/themes.dart';
import 'package:provider/provider.dart';

void main() async 
{
  // await dotenv.load
  // (
  //   fileName: Environment.filename
  // );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget 
{
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) 
  {
    return MultiProvider
    (
      providers:
      [
        ChangeNotifierProvider<CryptProvider>(create:(context)=>CryptProvider()),
      ],
      child: MaterialApp
      (
        title: 'Flutter Demo',
        theme: Themes.darkTheme,
        home: const name(),
      ),
    );
  }
}

