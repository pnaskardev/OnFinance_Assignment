import 'package:flutter/material.dart';
import 'package:onfinance_assignment/utils/styles.dart';

class TechnicalIndicators extends StatelessWidget {
  const TechnicalIndicators({super.key});

  @override
  Widget build(BuildContext context) 
  {
    final deviceSize = MediaQuery.of(context).size;
    return Card
    (
      child: Padding
      (
        padding: const EdgeInsets.all(8.0),
        child: Column
        (
          children:  
          [
            ListTile
            (
              title: Text('Technical Indicators',style: Styles.head1),
            ),

            ListTile
            (
              title: Row
              (
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const
                [
                  Flexible(child: Text('Cumulative Market Sentiment')),
                  Flexible(child: Text('62.42')),
                ],
              ),
              subtitle: const Text
              (
                'This measures the sentiment of the investors for that particaula stock or coin based on all the news articles, blogs, research papers, financial content featuring it.'
              ),
            ),
            const SizedBox
            (
              height: 10,
            ),
            ListTile
            (
              title: Row
              (
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const
                [
                  Flexible(child: Text('Relative Strength Index (RSI)')),
                  Flexible(child: Text('37.88')),
                ],
              ),
              subtitle: const Text
              (
                'This measures the price movement of the securities, tell us if the stock or coin is overbought (above 70) or oversold (below 30)'
              ),
            ),
            const SizedBox
            (
              height: 10,
            ),
            ListTile
            (
              title: Row
              (
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const
                [
                  Flexible(child: Text('Volitality')),
                  Flexible(child: Text('0.54')),
                ],
              ),
              subtitle: const Text
              (
                'This measures how much the stock or coin price is moving in any of the directions (upwards, downwards or directional) with respect to time.'
              ),
            ),
            const SizedBox
            (
              height: 10,
            ),

          ],
        ),
      ),
    );
  }
}