import 'package:flutter/material.dart';
import 'package:onfinance_assignment/utils/styles.dart';

class ExpansionCard extends StatefulWidget {
  @override
  _ExpansionCardState createState() => _ExpansionCardState();
}

class _ExpansionCardState extends State<ExpansionCard> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>
          [
            ListTile
            (
              title: Row
              (
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const
                [
                  Flexible(child: Text('Analyst Rating')),
                  Flexible(child: Icon(Icons.alarm))
                ],
              ),
            ),
            SizedBox
            (
              // height: isExpanded ? 200 : 0,
              child: Padding
              (
                padding: const EdgeInsets.all(8.0),
                child: Column
                (
                  children: 
                  [
                    ListTile
                    (
                      title: Text
                      (
                        '0.94634',
                        style: Styles.tabStyle,
                      ),
                      trailing:Text
                      (
                        'Target Price',
                        style: Styles.tabStyle,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox
            (
              height: isExpanded ? 100 : 0,
              
            ),
            Align
            (
              alignment: Alignment.bottomCenter,
              child: ElevatedButton
              (
                // child: Text(isExpanded ? 'Collapse' : 'Expand'),
                child: isExpanded? const Icon(Icons.arrow_drop_up) : const Icon(Icons.arrow_drop_down),
                onPressed: () {
                  setState(() {
                    isExpanded = !isExpanded;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}