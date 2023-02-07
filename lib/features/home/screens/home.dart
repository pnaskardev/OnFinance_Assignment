
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:onfinance_assignment/common/widgets/cryptobar.dart';
import 'package:onfinance_assignment/common/widgets/floatingActionButton.dart';
import 'package:onfinance_assignment/features/about/screens/about_screen.dart';
import 'package:onfinance_assignment/features/portfolioExposure/screens/portfolio_screen.dart';
import 'package:onfinance_assignment/common/widgets/graph_row.dart';
import 'package:onfinance_assignment/features/analystRating/screens/analyst_main_screen.dart';
import 'package:onfinance_assignment/features/technical_indicators/widgets/technical_indicators.dart';
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
  bool isFabVisible=false;
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
        body: NotificationListener<UserScrollNotification>
        (
          onNotification: (notification)
          {
            if(notification.direction==ScrollDirection.forward)
            {
              if(!isFabVisible)
              {
                setState(() 
                {
                  isFabVisible=true;  
                });
              }
            }
            else if(notification.direction==ScrollDirection.reverse)
            {
              if(isFabVisible==true)
              {
                setState(() 
                {
                  isFabVisible=false;  
                });
              }
            }
            return true;
          },
          child: SingleChildScrollView
          (
            child: Column
            (
              children:
              [
                // 
                const CryptoBar(),
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
              
                const GraphRow(),

                const AnalystMainScreen(),
                  
                
                  
                const PortFolioScreen(),
                  
                const AboutScreen(),  
                  
                const TechnicalIndicators()
                  
                  
              ] 
            ),
            
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: /*isFabVisible ?*/const FloatingAButton()
        // :
        // null
      )
    );
  }
}