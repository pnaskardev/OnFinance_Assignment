import 'package:onfinance_assignment/models/ResultModel.dart';

class CryptData 
{
  bool? adjusted;
  int? queryCount;
  String? requestId;
  List<Results>? results;
  int? resultsCount;
  String? status;
  String? ticker;

  CryptData
  (
    {
      this.adjusted,
      this.queryCount,
      this.requestId,
      this.results,
      this.resultsCount,
      this.status,
      this.ticker
    }
  );

  CryptData.fromJson(Map<String, dynamic> json) 
  {
    adjusted = json['adjusted'];
    queryCount = json['queryCount'];
    requestId = json['request_id'];
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(Results.fromJson(v));
      });
    }
    resultsCount = json['resultsCount'];
    status = json['status'];
    ticker = json['ticker'];
  }

  Map<String, dynamic> toJson() 
  {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['adjusted'] = adjusted;
    data['queryCount'] = queryCount;
    data['request_id'] = requestId;
    if (results != null) 
    {
      data['results'] = results!.map((v) => v.toJson()).toList();
    }
    data['resultsCount'] = resultsCount;
    data['status'] = status;
    data['ticker'] = ticker;
    return data;
  }
}

