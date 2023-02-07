
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
    var size=MediaQuery.of(context).size;
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
              const CryptoBar(),

              const GraphScreen(),
              Row
              (
                mainAxisAlignment: MainAxisAlignment.end,
                children: 
                [
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: ElevatedButton.icon
                      (
                        onPressed: ()
                        {
                          log('Bottom Sheet button pressed');
                          setState(() 
                          {
                            isFabVisible=false;  
                          });
                          _scaffoldKey.currentState!.showBottomSheet((context)
                          {
                            return SizedBox
                            (
                              height: size.height*0.3,
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
                                      leading: const Text('Indicators'),
                                      trailing: ElevatedButton
                                      (
                                        style: ElevatedButton.styleFrom
                                        (
                                          elevation: 5
                                        ),
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
                ],
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