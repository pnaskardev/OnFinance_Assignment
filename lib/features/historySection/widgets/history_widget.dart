import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onfinance_assignment/utils/colors.dart';
import 'package:onfinance_assignment/utils/styles.dart';

class HistoryWidget extends StatefulWidget {
  const HistoryWidget({super.key});

  @override
  State<HistoryWidget> createState() => _HistoryWidgetState();
}

class _HistoryWidgetState extends State<HistoryWidget> {
  @override
  Widget build(BuildContext context) 
  {
    double _sliderValue = 100000;
    int _yearSliderValue=1;
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
                        child: Text("${_sliderValue.toStringAsFixed(0)}"),
                      ),
                    ),
                    Flexible
                    (
                      child: CupertinoSlider
                      (
                        activeColor: blueColor,
                        min: 0,
                        max: 1000000,
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
                        child: Text("${_yearSliderValue.toStringAsFixed(0)}"),
                      ),
                    ),
                    Flexible
                    (
                      child: CupertinoSlider
                      (
                        activeColor: blueColor,
                        max: 10,
                        min: 1,
                        value: _yearSliderValue.toDouble(), 
                        divisions: 5,
                        onChanged: (newValue)
                        {
                          setState(() 
                          {
                            _yearSliderValue=newValue.toInt();  
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
                  labelText: 'You would have',
                  border: OutlineInputBorder
                  (
                    borderRadius: BorderRadius.circular(10.0)
                  )
                ),
                child: Row
                (
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const
                  [
                    Flexible
                    (
                      child: SizedBox
                      (
                        child: Text("1120.78"),
                      ),
                    ),
                    Flexible
                    (
                      child:Text("\$1205.67 MATIC"),
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
              child:Row
              (
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: 
                [
                  ElevatedButton.icon
                  (
                    onPressed: (){}, 
                    icon: const Icon
                    (
                      Icons.currency_bitcoin,
                      color: defaultColor,
                    ), 
                    label: Text
                    (
                      'MATIC',
                      style: Styles.buttonText,
                    ),
                    style: ElevatedButton.styleFrom
                    (
                      textStyle: Styles.buttonText,
                      backgroundColor: blueColor,
                      shape: RoundedRectangleBorder
                      (
                        borderRadius: BorderRadius.circular(15)
                      ),
                      elevation: 15.0,
                    ),
                    
                  ),
                  ElevatedButton.icon
                  (
                    onPressed: (){}, 
                    icon: const Icon
                    (
                      Icons.currency_bitcoin,
                      color: defaultColor,
                    ), 
                    label: Text
                    (
                      'BTC',
                      style: Styles.buttonText,
                    ),
                    style: ElevatedButton.styleFrom
                    (
                      shape: RoundedRectangleBorder
                      (
                        borderRadius: BorderRadius.circular(15)
                      ),
                      elevation: 15.0,
                    ),
                  ),
                  ElevatedButton.icon
                  (
                    onPressed: (){}, 
                    icon: const Icon
                    (
                      Icons.currency_bitcoin,
                      color: defaultColor,
                    ),  
                    label: Text
                    (
                      'ETH',
                      style: Styles.buttonText,
                    ),
                    style: ElevatedButton.styleFrom
                    (
                      
                      shape: RoundedRectangleBorder
                      (
                        borderRadius: BorderRadius.circular(15)
                      ),
                      elevation: 15.0,
                    ),
                  )
                ],
              ),
            )
          ),
        ],
      );
  }
}