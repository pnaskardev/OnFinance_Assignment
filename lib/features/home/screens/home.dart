
import 'dart:developer';

import 'package:flutter/material.dart';
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
        body: Consumer<CryptProvider>
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
            return Column
            (
              children:
              [
                SizedBox
                (
                  height: size.height*0.6,
                  width: size.width,
                  child: CandleGraphWidget(fetchedData: fetchedData,)
                ),

                SizedBox
                (
                  width: size.width*0.8,
                  child: Card
                  (
                    
                    child: Center(child: Text('asad')),
                  ),
                )
              ] 
            );
          },
        ),
      )
    );
  }
}