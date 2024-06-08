import 'package:car_wash_app/controller/login_shared_pref.dart';
import 'package:car_wash_app/helper/color_helper.dart';
import 'package:car_wash_app/helper/text_style_helper.dart';
import 'package:car_wash_app/ui/widget/subscription/ask_login.dart';
import 'package:car_wash_app/ui/widget/shared_widget/small_controller.dart';
import 'package:car_wash_app/ui/widget/subscription/custom_row_details.dart';
import 'package:car_wash_app/ui/widget/subscription/custom_rowbaka_content.dart';
import 'package:flutter/material.dart';

import 'package:hexcolor/hexcolor.dart';

class Subscription extends StatefulWidget {
  const Subscription({super.key});

  @override
  State<Subscription> createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {
  bool isLoading = true;
  bool isLogin = false;

  Future<void> checkIsLogin() async {
    isLogin = await SharedPrefHelper.getBool(key: "isLogin") ?? false;
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    checkIsLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: HexColor("F7F7F7"),
        //HexColor("F6D71C"),
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "الاشتراكات",
            style: TextStyleHelper.textStylefontSize18,
          ),
        ),
        body: isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : isLogin
                ? SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Column(
                          children: [
                            Center(
                              child: Container(
                                width: 400,
                                height: 200,
                                padding: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/subscription.png"),
                                )),
                              ),
                            ),
                            Center(
                              child: Text(
                                "الباقة السباعية",
                                style: TextStyleHelper.textStylefontSize20,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text("247.00 ريال",
                                style: TextStyleHelper.textStylefontSize22),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 8,
                                  width: 270,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                    color: Color.fromARGB(255, 241, 230, 196),
                                  ),
                                ),
                                Text(
                                  "29/0",
                                  style: TextStyleHelper.textStylefontSize16,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Text(
                              " عدد الغسلات المستهلكة:   0 ",
                              style: TextStyleHelper.textStylefontSize16,
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: ElevatedButton.icon(
                                label: Text(
                                  "تفاصيل الباقة",
                                  style: TextStyleHelper.textStylefontSize16
                                      .copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                icon: const Icon(
                                  Icons.subscriptions,
                                  color: Colors.white,
                                ),
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(150, 60),
                                  backgroundColor: ColorHelper.orange,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomRowDetail(
                                    title: "تاريخ الاشتراك",
                                    title2: "2024-05-27",
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  CustomRowDetail(
                                    title: "طريقة الدفع",
                                    title2: "دفع كاش للمندوب",
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  CustomRowDetail(
                                    title: "المبلغ المدفوع ",
                                    title2: "247.00 ريال",
                                  ),
                                  SizedBox(
                                    height: 50,
                                  ),
                                ],
                              ),
                            ),
                            Card(
                              elevation: 0,
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                // fromLTRB(15, 25, 15, 25),
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Center(
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const CustomSmallContainer(),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              "محتويات الباقة",
                                              style: TextStyleHelper
                                                  .textStylefontSize16,
                                            ),
                                          ]),
                                    ),
                                    const SizedBox(
                                      height: 40,
                                    ),
                                    const CustomRowbakaContent(
                                      bakaContent: " فواحة:",
                                      numContent: "29/0",
                                    ),
                                    const SizedBox(
                                      height: 25,
                                    ),
                                    const CustomRowbakaContent(
                                      bakaContent: " دعاسات (قطعتين):",
                                      numContent: "29/0",
                                    ),
                                    const SizedBox(
                                      height: 25,
                                    ),
                                    const CustomRowbakaContent(
                                      bakaContent: " مناديل:",
                                      numContent: "29/0",
                                    ),
                                    const SizedBox(
                                      height: 25,
                                    ),
                                    const CustomRowbakaContent(
                                      bakaContent: " قفازات قياده:",
                                      numContent: "29/0",
                                    ),
                                    const SizedBox(
                                      height: 25,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                : const AskToLoginWidget(),
      ),
    );
  }
}
