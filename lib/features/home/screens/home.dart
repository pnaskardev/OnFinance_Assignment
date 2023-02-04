import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:onfinance_assignment/features/home/widgets/candle_widget.dart';

class HomeScreen extends StatelessWidget 
{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) 
  {
    // return  Column
    // (
    //   children: const 
    //   [
    //     CandleGraphWidget()
    //   ],
    // );
    return SafeArea
    (
      child: Scaffold
      (
        appBar: AppBar
        (
          title: const Text('Home'),
        ),
        body: Center
        (
          child: Text(dotenv.get('API_URL',fallback: 'API_NOT_FOUND'),),
        ),
      )
    );
  }
}