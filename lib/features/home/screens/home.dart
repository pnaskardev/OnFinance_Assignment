
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:onfinance_assignment/common/widgets/cryptobar.dart';
import 'package:onfinance_assignment/common/widgets/floatingActionButton.dart';
import 'package:onfinance_assignment/features/about/screens/about_screen.dart';
import 'package:onfinance_assignment/features/graph/screens/graph_screen.dart';
import 'package:onfinance_assignment/features/historySection/screens/historical_screen.dart';
import 'package:onfinance_assignment/features/portfolioExposure/screens/portfolio_screen.dart';
import 'package:onfinance_assignment/common/widgets/graph_row.dart';
import 'package:onfinance_assignment/features/analystRating/screens/analyst_main_screen.dart';
import 'package:onfinance_assignment/features/technical_indicators/screens/technical_screen.dart';
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
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  bool isFabVisible=true;
  @override
  void initState() 
  {
    log('initState');
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) 
    {
      Provider.of<CryptProvider>(context,listen: false).getCandleData();
    });
    super.initState();
  }
  // @override
  @override
  Widget build(BuildContext context) 
  {
    log('build');
    return SafeArea
    (
      child: Scaffold
      (
        resizeToAvoidBottomInset: false,
        key: _scaffoldKey,
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
               CryptoBar(),

              Stack
              (
                children:
                [
                  Positioned
                  (
                    bottom: 60,
                    left: 250,
                    child: ElevatedButton.icon
                    (
                      onPressed: ()
                      {
                        log('Bottom Sheet button pressed');
                       
                        // Scaffold.of(context).showBottomSheet((context) 
                        // {
                        //    return const BottomModalSheet();
                        // });
                        setState(() 
                        {
                          isFabVisible=false;  
                        });
                        _scaffoldKey.currentState!.showBottomSheet((context)
                        {
                          return Container
                          (
                            height: 200,
                            color: Colors.amber,
                            child: Center
                            (
                              child: Column
                              (
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>
                                [
                                  ListTile
                                  (
                                    leading: Text('Indicators'),
                                    trailing: ElevatedButton
                                    (
                                      onPressed: ()
                                      {
                                        Navigator.pop(context);
                                        setState(() 
                                        {
                                          isFabVisible=true;
                                        });
                                      },
                                      child: const Icon(Icons.close),
                                    ),
                                  ),
                                  ElevatedButton
                                  (
                                    child: const Text('Close BottomSheet'),
                                    onPressed: () => Navigator.pop(context),
                                  ),
                                ],
                              ),
                            )
                          );
                        });
                      }, 
                      icon: const Icon(Icons.graphic_eq), 
                      label: const Text('Indicators'),
                      style: ElevatedButton.styleFrom
                      (
                        elevation: 5,
                        backgroundColor: Colors.black
                      ),
                    ),
                  ),
                  const IgnorePointer(child: GraphScreen())
                ] 
              ),

              const GraphRow(),
              const AnalystMainScreen(),  
              const PortFolioScreen(),
              const HistoricalWidget(),
              const AboutScreen(),
              const TechnicalIndicatorScreen()
            ] 
          ),
          
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: isFabVisible ? const FloatingAButton() : null
      )
    );
  }
}