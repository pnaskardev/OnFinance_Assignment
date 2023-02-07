import 'package:flutter/material.dart';
import 'package:onfinance_assignment/features/graph/widgets/candle_widget.dart';
import 'package:onfinance_assignment/providers/CryptProvider.dart';
import 'package:provider/provider.dart';

class GraphScreen extends StatelessWidget {
  const GraphScreen({super.key});

  @override
  Widget build(BuildContext context) 
  {
     var size=MediaQuery.of(context).size;
    return SizedBox
    (
      height: size.height*0.6,
      width: size.width,
      child: Consumer<CryptProvider>
      (
        builder: (context,value,child)
        {
          if(value.isLoading==true)
          {
            return const Center
            (
              child: CircularProgressIndicator(),
            );
          }
          else if(value.isError==true)
          {
            return const Center
            (
              child: Icon(Icons.error)
            );
          }
          final fetchedData=value.getData;
          return CandleGraphWidget(fetchedData: fetchedData,);
        },
        // child: CandleGraphWidget(fetchedData: fetchedData,)
      )
    );
  }
}