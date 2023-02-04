import 'package:flutter/material.dart';
import 'package:onfinance_assignment/features/home/widgets/candle_widget.dart';

class HomeScreen extends StatelessWidget 
{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return  Column
    (
      children: const 
      [
        CandleGraphWidget()
      ],
    );
  }
}