import 'package:flutter/material.dart';
import 'package:onfinance_assignment/features/analystRating/widgets/analyst_widget.dart';

class AnalystMainScreen extends StatelessWidget {
  const AnalystMainScreen({super.key});

  @override
  Widget build(BuildContext context) 
  {
    var size=MediaQuery.of(context).size;
    return Padding
    (
      padding: const EdgeInsets.all(8.0),
      child: SizedBox
      (
        // width: size.width*0.8,
        child:  Card
        (
          child: Padding
          (
            padding:const EdgeInsets.all(10),
            child: Column
            (
              children: 
              [
                
                const AnalystWidget(),
                Align
                (
                  alignment: Alignment.center,
                  child: ClipRRect
                  (
                    borderRadius: const BorderRadius.only
                    (
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0)
                    ),
                    child: SizedBox
                    (
                      height: size.height*0.009,
                      width: size.width*0.30,
                      child: const DecoratedBox
                      (
                        decoration:  BoxDecoration
                        (
                          color:  Color.fromRGBO(56, 229, 187,1),
                        )
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}