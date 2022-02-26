import 'package:febpractice/Controller/dashboard_controller.dart';
import 'package:febpractice/UI/common/app_text.dart';
import 'package:febpractice/UI/stock_list/widgets/stock_key_value.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StockListElement extends StatelessWidget {
  //StockListElement({Key? key}) : super(key: key);

  final String stockName;
  final String price;
  final String dayGain;
  final String lastTrade;
  final String extendedhrs;
  final String change;

  StockListElement(
    this.stockName,
    this.price,
    this.dayGain,
    this.lastTrade,
    this.extendedhrs,
    this.change,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      padding: const EdgeInsets.all(20),
      color: const Color.fromRGBO(30, 30, 61, 1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(
              stockName,
              style: CustomTextStyle.stockStyle(),
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          StockKeyValue("Price", price),
          const SizedBox(
            height: 2,
          ),
          StockKeyValue("Day Gain", dayGain),
          const SizedBox(
            height: 2,
          ),
          StockKeyValue("Last Trade", lastTrade),
          const SizedBox(
            height: 2,
          ),
          StockKeyValue("Extended hrs", extendedhrs),
          const SizedBox(
            height: 2,
          ),
          StockKeyValue("% Change", change),
          const SizedBox(
            height: 2,
          ),
        ],
      ),
    );
  }
}
