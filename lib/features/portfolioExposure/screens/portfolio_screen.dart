import 'package:flutter/material.dart';
import 'package:onfinance_assignment/features/portfolioExposure/widgets/PortfolioExposureCard.dart';
import 'package:onfinance_assignment/utils/colors.dart';

class PortFolioScreen extends StatelessWidget {
  const PortFolioScreen({super.key});

  @override
  Widget build(BuildContext context) 
  {
    var size=MediaQuery.of(context).size;
    return Padding
    (
      padding: const EdgeInsets.all(8.0),
      child: SizedBox
      (
        child:  Card
        (
          child: Padding
          (
            padding: const EdgeInsets.all(10),
            child: Column
            (
              children: 
              [
                const PortfolioExpansion(),
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
                          color:  portfolioExposureAccent
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