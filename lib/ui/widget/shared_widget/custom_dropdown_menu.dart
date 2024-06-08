import 'package:car_wash_app/helper/color_helper.dart';
import 'package:car_wash_app/helper/text_style_helper.dart';
import 'package:flutter/material.dart';

class CustomDropdownMenu extends StatelessWidget {
  const CustomDropdownMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      menuStyle: MenuStyle(
        backgroundColor: MaterialStateProperty.all(Colors.white),
      ),
      dropdownMenuEntries: const <DropdownMenuEntry<String>>[
        DropdownMenuEntry(
          style: ButtonStyle(
              side: MaterialStatePropertyAll(BorderSide(color: Colors.white)),
              backgroundColor: MaterialStatePropertyAll(Colors.white)),
          value: "نجران",
          label: "نجران",
        ),
        DropdownMenuEntry(
          value: "ينبع",
          label: "ينبع",
          style: ButtonStyle(
              side: MaterialStatePropertyAll(BorderSide(color: Colors.white)),
              backgroundColor: MaterialStatePropertyAll(Colors.white)),
        ),
        DropdownMenuEntry(
          value: "سيهات",
          label: "سيهات",
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.white)),
        ),
        DropdownMenuEntry(
          value: "مكة",
          label: "مكة",
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.white)),
        ),
        DropdownMenuEntry(
          value: "وادى الدواسر",
          label: "وادى الدواسر",
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.white)),
        ),
        DropdownMenuEntry(
          value: "شرورة",
          label: "شرورة",
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.white)),
        ),
        DropdownMenuEntry(
          value: "جدة",
          label: "جدة",
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.white)),
        ),
        DropdownMenuEntry(
          value: "تبوك",
          label: "تبوك",
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.white)),
        ),
        DropdownMenuEntry(
          value: "سكاكا",
          label: "سكاكا",
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.white)),
        ),
        DropdownMenuEntry(
          value: "حفر الباطن",
          label: "حفر الباطن",
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.white)),
        ),
        DropdownMenuEntry(
          value: "خميس مشيط",
          label: "خميس مشيط",
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.white)),
        ),
        DropdownMenuEntry(
          value: "عنيزة",
          label: "عنيزة",
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.white)),
        ),
        DropdownMenuEntry(
          value: "بيشة",
          label: "بيشة",
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.white)),
        ),
        DropdownMenuEntry(
          value: "بريده",
          label: "بريده",
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.white),
          ),
        ),
        DropdownMenuEntry(
          value: "المدينة المنورة",
          label: "المدينة المنورة",
          style: ButtonStyle(
              side: MaterialStatePropertyAll(BorderSide(color: Colors.white)),
              backgroundColor: MaterialStatePropertyAll(Colors.white)),
        ),
        DropdownMenuEntry(
          value: "القطيف",
          label: "القطيف",
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.white)),
        ),
        DropdownMenuEntry(
          value: "القريبات",
          label: "القريبات",
          style: ButtonStyle(
              side: MaterialStatePropertyAll(BorderSide(color: Colors.white)),
              backgroundColor: MaterialStatePropertyAll(Colors.white)),
        ),
      ],

      //underline:SizedBox.shrink(),
      width: 350,
      enableSearch: true,
      menuHeight: 330,

      label: Text(
        "المدينة",
        style: TextStyleHelper.textStylefontSize13.copyWith(
          color: ColorHelper.grey,
        ),
      ),

      trailingIcon: Icon(
        Icons.keyboard_arrow_down_rounded,
        color: ColorHelper.darkgrey,
      ),
      selectedTrailingIcon: Icon(
        Icons.keyboard_arrow_up_rounded,
        color: ColorHelper.darkgrey,
      ),
      inputDecorationTheme: InputDecorationTheme(
        iconColor: Colors.white,
        // hoverColor: Colors.white,
        //activeIndicatorBorder: const BorderSide(color: Colors.white),
        // focusColor: Colors.white,
        filled: true,
        fillColor: ColorHelper.grey.withOpacity(.3),
        hintStyle: TextStyle(
            color: ColorHelper.darkgrey, fontFamily: 'Cairo', fontSize: 13),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: ColorHelper.grey.withOpacity(.3),
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: ColorHelper.grey.withOpacity(.3),
            width: 1,
          ),
        ),
      ),
    );
  }
}
