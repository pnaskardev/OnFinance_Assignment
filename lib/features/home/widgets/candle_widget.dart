import 'package:flutter/material.dart';
import 'package:onfinance_assignment/models/ResultModel.dart';
import 'package:onfinance_assignment/utils/date.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CandleGraphWidget extends StatefulWidget 
{
  final List<Results> fetchedData;
  CandleGraphWidget({super.key,required this.fetchedData});

  @override
  State<CandleGraphWidget> createState() => _CandleGraphWidgetState();
}

class _CandleGraphWidgetState extends State<CandleGraphWidget> 
{
  late TrackballBehavior _trackballBehavior = TrackballBehavior();
  @override
  void initState() 
  {
    _trackballBehavior=TrackballBehavior
    (
      enable: true,
      activationMode: ActivationMode.none,
      tooltipSettings: const InteractiveTooltip(
                    enable: true,
                    color: Colors.red
                  )
    );
    super.initState();

  }
  @override
  Widget build(BuildContext context) 
  {
    final List<Results>? list = widget.fetchedData;
    var size=MediaQuery.of(context).size;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SfCartesianChart
        (
          primaryXAxis: DateTimeAxis
          (
            minimum: Date.formatter.parse("26-01-2023"),
            interval: 1,
            intervalType: DateTimeIntervalType.days,
            maximum: Date.formatter.parse(Date.formatter.format(DateTime.now()))
          ),
          primaryYAxis: NumericAxis
          (
            // minimum: 0 ,
            // interval: 0.1,
            // maximum: 2.0
          ),
          trackballBehavior: _trackballBehavior,
          tooltipBehavior: TooltipBehavior(enable: true),
          series: <CandleSeries>
          [
            CandleSeries<Results,DateTime>
            (
              dataSource: list!, 
              xValueMapper: (Results data,_)=>data.dateTime, 
              lowValueMapper: (Results data,_)=>data.l, 
              highValueMapper: (Results data,_)=>data.h, 
              openValueMapper: (Results data,_)=>data.o, 
              closeValueMapper: (Results data,_)=>data.c,
            ),
          ],
          
        ),
      )
    );
  }
}