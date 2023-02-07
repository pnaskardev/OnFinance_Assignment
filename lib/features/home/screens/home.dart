
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:onfinance_assignment/features/about/screens/about_screen.dart';
import 'package:onfinance_assignment/features/portfolioExposure/screens/portfolio_screen.dart';
import 'package:onfinance_assignment/features/portfolioExposure/widgets/PortfolioExposureCard.dart';
import 'package:onfinance_assignment/common/widgets/graph_row.dart';
import 'package:onfinance_assignment/features/analystRating/screens/analyst_main_screen.dart';
import 'package:onfinance_assignment/features/historySection/screens/historical_screen.dart';
import 'package:onfinance_assignment/features/about/widgets/about_widget.dart';
import 'package:onfinance_assignment/features/technical_indicators/widgets/technical_indicators.dart';
import 'package:onfinance_assignment/features/home/widgets/candle_widget.dart';
import 'package:onfinance_assignment/providers/CryptProvider.dart';
import 'package:onfinance_assignment/utils/colors.dart';
import 'package:onfinance_assignment/utils/styles.dart';
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
                  
                
                  
                  
              ] 
            ),
            
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: /*isFabVisible ?*/ ClipRRect
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
        )
        // :
        // null
      )
    );
  }
}