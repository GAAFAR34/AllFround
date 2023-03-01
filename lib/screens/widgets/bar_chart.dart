import 'package:flutter/material.dart';
import 'package:shop_app/config/styles.dart';

class CovidBarChart extends StatelessWidget {
  final List<double> covidCases;

  const CovidBarChart({required this.covidCases});

  @override
  Widget build(BuildContext context) {
    final maxValue = covidCases
        .reduce((value, element) => value > element ? value : element);
    final barWidth = MediaQuery.of(context).size.width * 0.1;

    return Container(
      height: 350.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20.0),
            alignment: Alignment.centerLeft,
            child: Text(
              'Daily Income',
              style: const TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 250.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: List.generate(covidCases.length, (index) {
                final barHeight = (covidCases[index] / maxValue) * 200.0;
                return Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: barWidth,
                      height: barHeight,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      _getLabelForIndex(index),
                      style: Styles.chartLabelsTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                );
              }),
            ),
          ),
        ],
      ),
    );
  }

  String _getLabelForIndex(int index) {
    switch (index) {
      case 0:
        return 'May 24';
      case 1:
        return 'May 25';
      case 2:
        return 'May 26';
      case 3:
        return 'May 27';
      case 4:
        return 'May 28';
      case 5:
        return 'May 29';
      case 6:
        return 'May 30';
      default:
        return '';
    }
  }
}
