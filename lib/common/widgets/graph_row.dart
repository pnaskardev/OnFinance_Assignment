import 'package:flutter/material.dart';
import 'package:onfinance_assignment/utils/colors.dart';
import 'package:onfinance_assignment/utils/styles.dart';

class GraphRow extends StatelessWidget {
  const GraphRow({super.key});

  @override
  Widget build(BuildContext context) 
  {
    var size=MediaQuery.of(context).size;
    return Padding
    (
      padding:const EdgeInsets.all(8.0),
      child: Container
      (
        decoration: BoxDecoration
        (
          color: Colors.black,
          border: Border.all(),
          borderRadius: const BorderRadius.all(Radius.circular(10))
        ),
        
        child: Padding
        (
          padding: const EdgeInsets.all(5),
          child: Row
          (
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: 
            [
              
              Flexible
              (
                child:SizedBox
                (
                  height: size.height*0.03,
                  child: ElevatedButton
                  (
                    onPressed: (){},
                    style: ElevatedButton.styleFrom
                    (
                      textStyle: Styles.buttonText,
                      backgroundColor: blueColor,
                      shape: RoundedRectangleBorder
                      (
                        borderRadius: BorderRadius.circular(5)
                      ),
                      elevation: 15.0,
                    ),
                    child: const Text('1H'),
                  ),
                ) 
              ),
              Flexible
              (
                child:SizedBox
                (
                  height: size.height*0.03,
                  child: ElevatedButton
                  (
                    onPressed: (){},
                    style: ElevatedButton.styleFrom
                    (
                      textStyle: Styles.buttonText,
                      backgroundColor: blueColor,
                      shape: RoundedRectangleBorder
                      (
                        borderRadius: BorderRadius.circular(5)
                      ),
                      elevation: 15.0,
                    ),
                    child: const Text('1D'),
                  ),
                ) 
              ),
              Flexible
              (
                child:SizedBox
                (
                  height: size.height*0.03,
                  child: ElevatedButton
                  (
                    onPressed: (){},
                    style: ElevatedButton.styleFrom
                    (
                      textStyle: Styles.buttonText,
                      backgroundColor: blueColor,
                      shape: RoundedRectangleBorder
                      (
                        borderRadius: BorderRadius.circular(5)
                      ),
                      elevation: 15.0,
                    ),
                    child: const Text('1W'),
                  ),
                ) 
              ),
              Flexible
              (
                child:SizedBox
                (
                  height: size.height*0.03,
              
                  child: ElevatedButton
                  (
                    onPressed: (){},
                    style: ElevatedButton.styleFrom
                    (
                      textStyle: Styles.buttonText,
                      backgroundColor: blueColor,
                      shape: RoundedRectangleBorder
                      (
                        borderRadius: BorderRadius.circular(5)
                      ),
                      elevation: 15.0,
                    ),
                    child: const Text('1M'),
                  ),
                ) 
              ),
              Flexible
              (
                child:SizedBox
                (
                  height: size.height*0.03,
                  
                  child: ElevatedButton
                  (
                    onPressed: (){},
                    style: ElevatedButton.styleFrom
                    (
                      textStyle: Styles.buttonText,
                      backgroundColor: blueColor,
                      shape: RoundedRectangleBorder
                      (
                        borderRadius: BorderRadius.circular(5)
                      ),
                      elevation: 15.0,
                    ),
                    child: const Text('5Y'),
                  ),
                ) 
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}