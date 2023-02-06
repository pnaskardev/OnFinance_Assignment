
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:onfinance_assignment/common/widgets/ExpansionTile.dart';
import 'package:onfinance_assignment/common/widgets/PortfolioExposureCard.dart';
import 'package:onfinance_assignment/common/widgets/historical_widget.dart';
import 'package:onfinance_assignment/common/widgets/about_widget.dart';
import 'package:onfinance_assignment/common/widgets/technical_indicators.dart';
import 'package:onfinance_assignment/features/home/widgets/candle_widget.dart';
import 'package:onfinance_assignment/providers/CryptProvider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget 
{
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> 
{
  @override
  void initState() 
  {
    log('initState');
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) 
    {
      Provider.of<CryptProvider>(context,listen: false).getCandleData();
    });
    super.initState();
    
    // Provider.of<CryptProvider>(context,listen: false).getCandleData();
  }
  // @override
  @override
  Widget build(BuildContext context) 
  {
    var size=MediaQuery.of(context).size;
    log('build');
    return SafeArea
    (
      child: Scaffold
      (
        appBar: AppBar
        (
          leading: const BackButton(),
          title: const Text('Polygon'),
          actions: 
          [
            IconButton(onPressed: (){}, icon:const Icon(Icons.bookmark_rounded))
          ],
        ),
        body: SingleChildScrollView
        (
          child: Column
          (
            children:
            [
              SizedBox
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
              ),
        
              Padding
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
                      child: ExpansionCard(),
                    ),
                  )
                ),
              ),

              const Padding
              (
                padding: EdgeInsets.all(8.0),
                child: SizedBox
                (
                  child:  Card
                  (
                    child: Padding
                    (
                      padding: EdgeInsets.all(10),
                      child: PortfolioExpansion(),
                    ),
                  )
                ),
              ),

              const Padding
              (
                padding: EdgeInsets.all(8.0),
                child: SizedBox
                (
                  child:  Card
                  (
                    child: Padding
                    (
                      padding: EdgeInsets.all(10),
                      child: HistoricalWidget(),
                    ),
                  )
                ),
              ),

              const Padding
              (
                padding: EdgeInsets.all(16.0),
                child: SizedBox
                (
                  child:  AboutWidget()
                ),
              ),

               const Padding
              (
                padding: EdgeInsets.all(16.0),
                child: SizedBox
                (
                  child:  TechnicalIndicators()
                ),
              ),


            ] 
          ),
        ),
      )
    );
  }
}