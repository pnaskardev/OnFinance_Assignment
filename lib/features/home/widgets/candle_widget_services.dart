import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:onfinance_assignment/models/ResultModel.dart';
import 'package:onfinance_assignment/utils/static_data.dart';
class CandleWidgetServices
{
  Future<List<Results>> getCryptData() async
  {
    try 
    {
      log('try block entered');
      List<Results> _temp=[];
      await Future.delayed(const Duration(seconds: 2), () 
      {
        var temp=StaticData.ls;
        for(var i in temp)
        {
          log(i.dateTime.toString());
          _temp.add(i);
        }
      });
      var temp=StaticData.ls;
      for(var i in temp)
      {
        log(i.dateTime.toString());
        _temp.add(i);
      }
    return _temp;


      // final _data=Results.fromJson(jsonData);
      // return _data;
    } catch (e) 
    {
      log(e.toString());
      throw Exception(e);
    }
    
  }
}