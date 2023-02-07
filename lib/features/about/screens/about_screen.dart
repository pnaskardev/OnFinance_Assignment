import 'package:flutter/material.dart';
import 'package:onfinance_assignment/features/about/widgets/about_widget.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding
    (
      padding: EdgeInsets.all(16.0),
      child: SizedBox
      (
        child:  AboutWidget()
      ),
    );
  }
}