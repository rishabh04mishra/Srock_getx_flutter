import 'package:febpractice/UI/common/app_text.dart';
import 'package:flutter/cupertino.dart';

class StockKeyValue extends StatelessWidget {
  //const StockKeyValue({Key? key}) : super(key: key);
  final String? text1;
  final String? text2;
  StockKeyValue(this.text1, this.text2);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Align(
            alignment: Alignment.centerLeft,
            child: Text(
              text1!,
              style: CustomTextStyle.apptextStyle(),
            )),
        Text(text2!, style: CustomTextStyle.apptextStyle()),
      ],
    );
  }
}
