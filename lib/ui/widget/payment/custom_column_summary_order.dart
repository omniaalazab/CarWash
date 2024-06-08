import 'package:car_wash_app/ui/widget/payment/custom_row_order.dart';
import 'package:flutter/material.dart';

class CustomColumnSummaryOrder extends StatelessWidget {
  const CustomColumnSummaryOrder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomRowOrder(
          summaryOrderTitle: " سعر الخدمة :",
          orderPrice: "120 ريال",
        ),
        SizedBox(
          height: 10,
        ),
        CustomRowOrder(
          summaryOrderTitle: " الضريبة :",
          orderPrice: "10 ريال",
        ),
        SizedBox(
          height: 10,
        ),
        CustomRowOrder(
          summaryOrderTitle: "الخدمات الاضافية :",
          orderPrice: "30 ريال",
        ),
        SizedBox(
          height: 10,
        ),
        CustomRowOrder(
          summaryOrderTitle: " قيمة الخصم :",
          orderPrice: "120 ريال",
        ),
        SizedBox(
          height: 10,
        ),
        Divider(
          endIndent: 20,
          indent: 20,
        ),
        CustomRowOrder(
          summaryOrderTitle: "المجموع :",
          orderPrice: "130 ريال",
        ),
      ],
    );
  }
}
