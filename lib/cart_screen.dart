import 'package:course_shop/my_app_texts.dart';
import 'package:course_shop/reusable_widgets/my_app_divider.dart';
import 'package:course_shop/reusable_widgets/my_app_icon_button.dart';
import 'package:course_shop/reusable_widgets/my_app_show_dialog.dart';
import 'package:course_shop/reusable_widgets/my_app_vertical_listview.dart';
import 'package:course_shop/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:course_shop/data/data.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Course> cartList = AppData.cartList;
    final textStyle = Theme.of(context).textTheme;
    final contextSize = MediaQuery.sizeOf(context);
    const mainPadding = EdgeInsets.fromLTRB(25, 0, 25, 0);
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(1),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border.all(width: 0.2)),
          margin: EdgeInsets.fromLTRB(20, 20, 20, 35),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _FirstRow(textStyle: textStyle),
                MyAppDivider(mainPadding: EdgeInsets.fromLTRB(10, 7, 10, 7)),
                _SecondRow(
                    contextSize: contextSize,
                    textStyle: textStyle,
                    cartList: cartList),
                _ThirdRow(
                    mainPadding: mainPadding,
                    contextSize: contextSize,
                    textStyle: textStyle,
                    cartList: cartList),
              ]),
        ),
      ),
    );
  }
}

class _ThirdRow extends StatelessWidget {
  final EdgeInsets mainPadding;
  final List<Course> cartList;
  const _ThirdRow({
    super.key,
    required this.contextSize,
    required this.textStyle,
    required this.mainPadding,
    required this.cartList,
  });

  final Size contextSize;
  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 66,
      width: contextSize.width,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor:
                  MaterialStatePropertyAll(CourseAppTheme.appButtonsColor),
              shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)))),
          onPressed: () {
            showCupertinoDialog(
              context: context,
              builder: (context) => MyAppShowDialog(
                textStyle: textStyle,
                mainPadding: mainPadding,
                dialogLabel: MyAppTexts.chooseBankPortal,
              ),
            );
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(MyAppTexts.pay,
                  style: textStyle.labelLarge
                      ?.copyWith(fontSize: 20, fontWeight: FontWeight.w800)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      MyAppTexts.amountPrice,
                      style: textStyle.labelLarge
                          ?.copyWith(color: CourseAppTheme.appButtonsTextColor),
                    ),
                    Text(
                      _costCalculation(cartList),
                      style: textStyle.labelLarge?.copyWith(
                          color: CourseAppTheme.appButtonsTextSecondaryColor,
                          fontWeight: FontWeight.w900),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }

  String _costCalculation(List<Course> cartList) {
    final getData = GetData(courses: cartList, textStyle: textStyle);
    List<Text> x = getData.coursesPrice;
    int coursePrices = 0;
    for (int i = 0; i < x.length; i++) {
      String coursesPrice =
          getData.coursesPrice[i].data!.replaceAll(' تومان', '').trim();

      coursesPrice != 'رایگان'
          ? coursePrices += int.parse(coursesPrice.toEnglishDigit())
          : null;
    }
    return coursePrices.toString().toPersianDigit() + ' تومان';
  }
}

class _SecondRow extends StatelessWidget {
  final List<Course> cartList;
  const _SecondRow({
    super.key,
    required this.contextSize,
    required this.textStyle,
    required this.cartList,
  });

  final Size contextSize;
  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    final getData = GetData(courses: cartList, textStyle: textStyle);
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: My_App_Vertical_ListView(
        contextSize: contextSize,
        textStyle: textStyle,
        hight: contextSize.height - 300,
        itemsHight: 125,
        setDividerBetweenItems: true,
        setBorder: false,
        setLeftArrowButton: false,
        itemImage: getData.coursesPhoto,
        row1Children: getData.coursesNames,
        row2Children1: [
          ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SizedBox(
                width: 20,
                height: 20,
                child: Image.asset('assets/images/blank-profile-picture.png'),
              )),
        ],
        row2Children2: getData.coursesTeacherNames,
        row2Children3: getData.coursesPrice,
        row3Children1: getData.coursesLength,
        row3Children2: Icon(
          CupertinoIcons.circle_fill,
          color: CourseAppTheme.appFifthColor,
          size: 7,
        ),
        row3Children3: getData.coursesSessionNumber,
        itemCount: cartList.length,
      ),
    );
  }
}

class _FirstRow extends StatelessWidget {
  const _FirstRow({
    super.key,
    required this.textStyle,
  });

  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MyAppIconButton(
            iconData: CupertinoIcons.text_justifyleft,
            onTap: () {},
            setBorder: false,
          ),
          Text(
            MyAppTexts.paymentCart,
            style: textStyle.titleLarge,
          ),
          MyAppIconButton(
            iconData: CupertinoIcons.search,
            onTap: () {},
            setBorder: false,
          )
        ],
      ),
    );
  }
}
