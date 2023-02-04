import 'package:flutter/material.dart';
import 'package:onfinance_assignment/models/CryptDataModel.dart';

class CandleGraphWidget extends StatelessWidget 
{
  const CandleGraphWidget({super.key,this.fetchedData});
  final CryptData? fetchedData;
  @override
  Widget build(BuildContext context) 
  {
    var size=MediaQuery.of(context).size;
    return const SizedBox
    (
      height: 200,
      width: 200,
      child: Text('hii'),
    );
  }
}