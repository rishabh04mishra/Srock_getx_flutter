import 'dart:convert';

import 'package:febpractice/UI/common/app_text.dart';
import 'package:febpractice/data/model/stock_list_model.dart';
import 'package:http/http.dart' as http;

class StockRepository {
  static var client = http.Client();
  Future<StockListModel> fetchStock() async {
    var stockModel;
    var response = await client.get(CustomTextStyle.url);
    if (response.statusCode == 200) {
      var jsonString = response.body;
      var jsonMap = json.decode(jsonString);
      stockModel = StockListModel.fromJson(jsonMap);
    }

    return stockModel;
  }
}
