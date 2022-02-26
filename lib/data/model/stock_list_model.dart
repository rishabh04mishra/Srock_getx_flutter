// To parse this JSON data, do
//
//     final stockListModel = stockListModelFromJson(jsonString);

import 'dart:convert';

StockListModel stockListModelFromJson(String str) => StockListModel.fromJson(json.decode(str));

String stockListModelToJson(StockListModel data) => json.encode(data.toJson());

class StockListModel {
    StockListModel({
        this.data,
    });

    List<Datum>? data;

    factory StockListModel.fromJson(Map<String, dynamic> json) => StockListModel(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class Datum {
    Datum({
        this.id,
        this.stockName,
        this.price,
        this.dayGain,
        this.lastTrade,
        this.extendedHours,
        this.lastPrice,
    });

    String? id;
    String? stockName;
    double? price;
    double? dayGain;
    String? lastTrade;
    String? extendedHours;
    double? lastPrice;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        stockName: json["stockName"],
        price: json["price"].toDouble(),
        dayGain: json["dayGain"].toDouble(),
        lastTrade: json["lastTrade"],
        extendedHours: json["extendedHours"],
        lastPrice: json["lastPrice"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "stockName": stockName,
        "price": price,
        "dayGain": dayGain,
        "lastTrade": lastTrade,
        "extendedHours": extendedHours,
        "lastPrice": lastPrice,
    };
}
