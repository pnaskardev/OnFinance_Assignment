
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
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) 
    {
      Provider.of<CryptProvider>(context,listen: false).getCandleData();
    });
  }
  // @override
  @override
  Widget build(BuildContext context) 
  {
  
    // return  Column
    // (
    //   children: const 
    //   [
    //     CandleGraphWidget()
    //   ],
    // );
    return SafeArea
    (
      child: Scaffold
      (
        appBar: AppBar
        (
          title: const Text('Home'),
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
            return CandleGraphWidget(fetchedData: fetchedData,);
          },
        ),
      )
    );
  }
}