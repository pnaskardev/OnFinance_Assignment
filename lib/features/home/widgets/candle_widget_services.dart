import 'dart:convert';
import 'dart:developer';

import 'package:onfinance_assignment/models/CryptDataModel.dart';
import 'package:http/http.dart' as http;
class CandleWidgetServices
{
  Future<CryptData> getCryptData() async
  {
    try 
    {
      log('try block entered');
      //  var response= await http.get(Uri.https(Environment.apiUrl,Environment.endPoint));
      var response= await http.get(Uri.parse('https://api.polygon.io/v2/aggs/ticker/X:BTCUSD/range/1/day/2023-01-09/2023-01-09?adjusted=true&sort=asc&limit=120&apiKey=cqOtepip_8neQiqOtGQJwpq0W72zVpgC'));
      // log(response.body);
      var jsonData=jsonDecode((response.body));
      log(jsonData);
      final _data=CryptData.fromJson(jsonData);
      return _data;
    } catch (e) 
    {
      log(e.toString());
      throw Exception(e);
    }
  }
}