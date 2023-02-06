import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HistoricalWidget extends StatefulWidget 
{
  const HistoricalWidget({super.key});

  @override
  State<HistoricalWidget> createState() => _HistoricalWidgetState();
}

class _HistoricalWidgetState extends State<HistoricalWidget> {
  double _sliderValue = 0;

  @override
  Widget build(BuildContext context) 
  {
    return Column
    (
      children: 
      [
        Padding
        (
          padding: const EdgeInsets.all(10.0),
          child: SizedBox
          (
            child: InputDecorator
            (
              decoration: InputDecoration
              (
                labelText: 'If You Would Have Invested',
                border: OutlineInputBorder
                (
                  borderRadius: BorderRadius.circular(10.0)
                )
              ),
              child: Row
              (
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: 
                [
                  Flexible
                  (
                    child: SizedBox
                    (
                      child: Text("${_sliderValue.toStringAsFixed(2)}"),
                    ),
                  ),
                  Flexible
                  (
                    child: CupertinoSlider
                    (
                      value: _sliderValue, 
                      onChanged: (newValue)
                      {
                        setState(() 
                        {
                          _sliderValue=newValue;  
                        });
                      }
                    ),
                  ),
                ],
              ),
            ) ,
          ),
        ),

        Padding
        (
          padding: const EdgeInsets.all(10.0),
          child: SizedBox
          (
            child: InputDecorator
            (
              decoration: InputDecoration
              (
                labelText: 'For Previous',
                border: OutlineInputBorder
                (
                  borderRadius: BorderRadius.circular(10.0)
                )
              ),
              child: Row
              (
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: 
                [
                  Flexible
                  (
                    child: SizedBox
                    (
                      child: Text("${_sliderValue.toStringAsFixed(2)}"),
                    ),
                  ),
                  Flexible
                  (
                    child: CupertinoSlider
                    (
                      value: _sliderValue, 
                      onChanged: (newValue)
                      {
                        setState(() 
                        {
                          _sliderValue=newValue;  
                        });
                      }
                    ),
                  ),
                ],
              ),
            ) ,
          ),
        ),


      ],
    );
  }
}