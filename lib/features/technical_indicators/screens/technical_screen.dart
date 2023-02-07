import 'package:flutter/material.dart';
import 'package:onfinance_assignment/features/technical_indicators/widgets/technical_indicators.dart';

class TechnicalIndicatorScreen extends StatelessWidget {
  const TechnicalIndicatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding
    (
      padding: EdgeInsets.all(16.0),
      child: SizedBox
      (
        child:  TechnicalIndicators()
      ),
    );
  }
}