import 'package:flutter/material.dart';
import 'package:onfinance_assignment/utils/colors.dart';
import 'package:onfinance_assignment/utils/styles.dart';

class FloatingAButton extends StatelessWidget {
  const FloatingAButton({super.key});

  @override
  Widget build(BuildContext context) 
  {
    var size=MediaQuery.of(context).size;
    return ClipRRect
        (

          child: Container
          (
            
            decoration: const BoxDecoration
            (
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(10.0))
            ),
            child: Padding
            (
              padding: const EdgeInsets.only(top: 8.0),
              child: Row
              (
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: 
                [
                  Flexible
                  (
                    child:SizedBox
                    (
                      height: size.height*0.06,
                      width: size.width*0.3,
                      child: ElevatedButton
                      (
                        onPressed: (){},
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
                        child: const Text('Buy'),
                      ),
                    ) 
                  ),
                  Flexible
                  (
                    child:SizedBox
                    (
                      width: size.width*0.3,
                      height: size.height*0.06,
                      child: ElevatedButton
                      (
                        
                        onPressed: (){},
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
                        child: const Text('Sell'),
                      ),
                    ) 
                  )
                ],
              ),
            ),
          ),
        );
  }
}