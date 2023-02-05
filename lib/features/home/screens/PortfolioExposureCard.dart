import 'package:flutter/material.dart';

class PortfolioExpansion extends StatefulWidget 
{
  const PortfolioExpansion({super.key});

  @override
  State<PortfolioExpansion> createState() => _PortfolioExpansionState();
}

class _PortfolioExpansionState extends State<PortfolioExpansion> 
{
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
                  Flexible
                  (
                    child: Text
                    (
                      'Your Portfolio Exposure',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    
                  ),
                  Flexible
                  (
                    child: Text
                    (
                      '14,69,073',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
            ListTile
            (
              title: Row
              (
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const
                [
                  Text('Invested'),
                  Text('Quantity'),
                  Text('Broker'),
                ],
              ),
            ),
            SizedBox
            (
              height: isExpanded ? 100 : 0,
              child: const Padding
              (
                padding:  EdgeInsets.all(8.0),
              ),
            ),
            Align
            (
              alignment: Alignment.bottomCenter,
              child: ElevatedButton
              (
                child: isExpanded? const Icon(Icons.arrow_drop_up) : const Icon(Icons.arrow_drop_down),
                onPressed: () 
                {
                  setState(() 
                  {
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