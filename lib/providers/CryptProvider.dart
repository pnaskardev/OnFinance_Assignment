import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:onfinance_assignment/features/home/widgets/candle_widget_services.dart';
import 'package:onfinance_assignment/models/CryptDataModel.dart';

class CryptProvider with ChangeNotifier
{
  CryptData? _data;
  bool isLoading=false;
  bool isError=false;
  final _service=CandleWidgetServices();

  get getData=>_data;

  Future<void> getCandleData() async
  {
    try 
    {
      isLoading=true;
      notifyListeners();

      final response= await _service.getCryptData();
      _data=response;
      log(response.ticker!);
      isLoading=false;
      notifyListeners();  

    } catch (e) 
    {
      isLoading=false;
      notifyListeners();

      isError=true;
      notifyListeners();  
    }
  }

}