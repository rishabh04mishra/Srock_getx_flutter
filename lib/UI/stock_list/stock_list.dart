import 'package:febpractice/Controller/dashboard_controller.dart';
import 'package:febpractice/UI/stock_list/widgets/stock_list_element.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StockList extends StatelessWidget {
  StockList({Key? key}) : super(key: key);
  final DashBoardController controller = Get.find<DashBoardController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(brightness: Brightness.dark,),
      backgroundColor: const Color.fromRGBO(23, 23, 52, 1),
      body: Obx(
        () => controller.isLoading.value
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Container(
                      child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 40, 0, 25),
                          child: Text(
                            "My watchList",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      //physics: NeverScrollableScrollPhysics(),
                      //shrinkWrap: true,
                      itemBuilder: (context, index) => Column(
                        children: [
                          StockListElement(
                            controller.data[index].stockName,
                            controller.data[index].price.toString(),
                            controller.data[index].dayGain.toString(),
                            controller.data[index].lastTrade,
                            controller.data[index].extendedHours.toString(),
                            controller.data[index].lastPrice.toString(),
                          ),
                          const SizedBox(
                            height: 15,
                          )
                        ],
                      ), //Container(
                      //   color: const Color.fromRGBO(30, 30, 61, 1),
                      //   child: Text("rishabh",style: CustomTextStyle.stockStyle(),),
                      // ),
                      itemCount: controller.data.length,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
