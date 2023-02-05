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
      //  var response= await http.get(Uri.https(Environment.apiUrl,Environment.endPoint));
      var response= await http.get(Uri.parse('https://api.polygon.io/v2/aggs/ticker/X:BTCUSD/range/30/day/2023-01-01/2023-02-01?adjusted=true&sort=asc&limit=120&apiKey=cqOtepip_8neQiqOtGQJwpq0W72zVpgC'));
      // log(response.body);
      Map<String, dynamic> jsonData=jsonDecode((response.body));
      log(jsonData['request_id']);
      
      List<Results> _temp=[];
      // Future.delayed(const Duration(seconds: 4), () 
      // {
      //   var temp=StaticData.ls;
      //   for(var i in temp)
      //   {
      //     log(i.dateTime.toString());
      //     _temp.add(i);
      //   }
      // });
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