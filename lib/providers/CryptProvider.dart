
import 'package:flutter/material.dart';
import 'package:onfinance_assignment/features/home/widgets/candle_widget_services.dart';
import 'package:onfinance_assignment/models/ResultModel.dart';

class CryptProvider with ChangeNotifier
{
  List<Results>? _data;
  bool isLoading=true;
  bool isError=false;
  final _service=CandleWidgetServices();

  get getData=>_data;

  Future<void> getCandleData() async
  {
    try 
    {
      isLoading=true;
      notifyListeners();
      // _data=response;
      _data=await _service.getCryptData();
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