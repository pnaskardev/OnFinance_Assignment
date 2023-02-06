import 'package:flutter/material.dart';
import 'package:onfinance_assignment/utils/styles.dart';

class AboutWidget extends StatelessWidget
{
  const AboutWidget({super.key});

  @override
  Widget build(BuildContext context) 
  {
    final deviceSize = MediaQuery.of(context).size;
    return Card
    (
      child: Column
      (
        children: 
        [
          const ListTile
          (
            title: Text('About MATIC'),
          ),
          ListTile
          (
            title: Row
            (
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  
              [
                Flexible(child: Text('Market Cap',style: Styles.smallTabName,)),
                const Flexible(child: Text('65,195 Cr.'))
              ],
            ),
          ),
      
          ListTile
          (
            title: Row
            (
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  
              [
                Flexible(child: Text('P/E Ratio',style: Styles.smallTabName,)),
                const Flexible(child: Text('30.2'))
              ],
            ),
          ),
          ListTile
          (
            title: Row
            (
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  
              [
                Flexible(child: Text('Profit',style: Styles.smallTabName,)),
                const Flexible(child: Text('1098.48 Cr.'))
              ],
            ),
          ),
          ListTile
          (
            title: Row
            (
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  
              [
                Flexible(child: Text('Divident Yield',style: Styles.smallTabName,)),
                const Flexible(child: Text('1.92'))
              ],
            ),
          )
      
        ],
      ),
    );
  }
}