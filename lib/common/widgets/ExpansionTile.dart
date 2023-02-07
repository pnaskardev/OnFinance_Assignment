import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onfinance_assignment/utils/colors.dart';
import 'package:onfinance_assignment/utils/static_data.dart';
import 'package:onfinance_assignment/utils/styles.dart';
import 'package:onfinance_assignment/utils/utils.dart';

class ExpansionCard extends StatefulWidget {
  @override
  _ExpansionCardState createState() => _ExpansionCardState();
}

class _ExpansionCardState extends State<ExpansionCard> 
{
  bool isExpanded = false;
  
  int _index=0;
  int _minValue=0;
  final int _maxValue=StaticData().buyStatusList.length-1;
  int divisions= StaticData().buyStatusList.length-1;

  @override
  Widget build(BuildContext context) 
  {
    var size=MediaQuery.of(context).size;
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
                  Flexible(child: Icon(Icons.graphic_eq))
                ],
              ),
            ),
            SizedBox
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

  Widget buildLabel
  (
    {
      required String label,
      required double width,
      required Color color
    }
  )
  {
    return SizedBox
    (
      width: width,
      child: Text
      (
        label,
        textAlign: TextAlign.center,
        style: const  TextStyle
        (
          fontSize: 18,
          
        ).copyWith(color: color),
      ),
    );
  }

}