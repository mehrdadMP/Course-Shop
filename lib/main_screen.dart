import 'package:carousel_slider/carousel_slider.dart';
import 'package:course_shop/reusable_widgets/my_app_divider.dart';
import 'package:course_shop/reusable_widgets/my_app_show_dialog.dart';
import 'package:course_shop/reusable_widgets/my_app_textfield.dart';
import 'package:course_shop/reusable_widgets/my_app_vertical_listview.dart';
import 'package:course_shop/theme.dart';
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dialogs/flutter_dialogs.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    const mainPadding = EdgeInsets.fromLTRB(25, 0, 25, 0);
    final contextSize = MediaQuery.sizeOf(context);
    final List<String> coursesCategories = <String>[
      'همه\u200cی دروس',
      'طراحی',
      'برنامه نویسی',
      'مهارت آموزی',
      'نرم افزار 3DSMax',
    ];
    return SafeArea(
      child: Scaffold(
        body: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(children: [
              _FirstRow(textStyle: textStyle, mainPadding: mainPadding),
              MyAppDivider(mainPadding: mainPadding),
              _SecondRow(textStyle: textStyle, mainPadding: mainPadding),
              _ThirdRow(
                  coursesCategories: coursesCategories,
                  textStyle: textStyle,
                  mainPadding: mainPadding),
              _FourthRow(textStyle: textStyle, mainPadding: mainPadding),
              _FifthRow(textStyle: textStyle, mainPadding: mainPadding),
              _SixthRow(
                  textStyle: textStyle,
                  mainPadding: mainPadding,
                  contextSize: contextSize),
            ]),
          ),
        ),
      ),
    );
  }
}

class _SixthRow extends StatelessWidget {
  final TextTheme textStyle;
  final EdgeInsets mainPadding;
  final Size contextSize;

  const _SixthRow({
    required this.textStyle,
    required this.mainPadding,
    required this.contextSize,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: mainPadding.copyWith(left: 25, right: 25),
      child: My_App_Vertical_ListView(
        contextSize: contextSize,
        textStyle: textStyle,
        hight: contextSize.height - 550,
        row1Children: [
          Text(
            'نام درس',
            style: textStyle.bodySmall?.copyWith(fontSize: 11.5),
          ),
        ],
        row2Children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SizedBox(
                width: 20,
                height: 20,
                child: Image.asset('assets/images/blank-profile-picture.png'),
              )),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'نام مدرس',
                  style: textStyle.bodySmall?.copyWith(fontSize: 11.5),
                ),
                Text('100 تومان',
                    style: textStyle.bodySmall
                        ?.copyWith(color: CourseAppTheme.appFifthColor)),
              ],
            ),
          ),
        ],
        row3Children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
            child: Text(
              'طول دوره(ساعت)',
              style: textStyle.bodySmall?.copyWith(fontSize: 11.5),
            ),
          ),
          Icon(
            CupertinoIcons.circle_fill,
            color: CourseAppTheme.appFifthColor,
            size: 6,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
            child: Text(
              'تعداد جلسات دوره',
              style: textStyle.bodySmall?.copyWith(fontSize: 11.5),
            ),
          ),
        ],
        itemsHight: 126,
      ),
    );
  }
}

class _FifthRow extends StatelessWidget {
  final TextTheme textStyle;
  final EdgeInsets mainPadding;

  const _FifthRow({required this.textStyle, required this.mainPadding});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: mainPadding.copyWith(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'پربازدیدترین دروس',
            style: textStyle.titleMedium
                ?.copyWith(fontSize: 17, fontWeight: FontWeight.w800),
          ),
          Text('نمایش همه',
              style: textStyle.titleMedium?.copyWith(
                  color: CourseAppTheme.appsixthColor, fontSize: 13)),
        ],
      ),
    );
  }
}

class _FourthRow extends StatelessWidget {
  final EdgeInsets mainPadding;

  const _FourthRow({
    super.key,
    required this.textStyle,
    required this.mainPadding,
  });

  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: mainPadding.copyWith(left: 0, right: 0),
      child: CarouselSlider.builder(
        itemCount: 15,
        itemBuilder: (context, index, realIndex) {
          return Stack(
            children: [
              Container(
                alignment: Alignment.center,
                width: 300,
                height: 300,
                margin: EdgeInsets.fromLTRB(23, 50, 23, 50),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 25,
                      spreadRadius: 6,
                      blurStyle: BlurStyle.normal,
                    )
                  ],
                ),
              ),
              Container(
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: CourseAppTheme.appForthColor,
                ),
                margin: EdgeInsets.fromLTRB(3, 30, 3, 30),
                padding: EdgeInsets.all(15),
                child: SingleChildScrollView(
                  physics: NeverScrollableScrollPhysics(),
                  child: Column(
                    children: [
                      Container(
                        height: 175,
                        decoration: BoxDecoration(
                          color: CourseAppTheme.appSecondaryColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Text>[
                            Text(
                              'نام درس',
                              style: textStyle.bodySmall,
                            ),
                            Text('100 تومان',
                                style: textStyle.bodySmall?.copyWith(
                                    color: CourseAppTheme.appFifthColor)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Row(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: Image.asset(
                                      'assets/images/blank-profile-picture.png'),
                                )),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                              child: Text(
                                'نام مدرس',
                                style: textStyle.bodySmall,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                              child: Text(
                                'طول دوره(ساعت)',
                                style: textStyle.bodySmall,
                              ),
                            ),
                            Icon(
                              CupertinoIcons.circle_fill,
                              color: CourseAppTheme.appFifthColor,
                              size: 7,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                              child: Text(
                                'تعداد جلسات دوره',
                                style: textStyle.bodySmall,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          );
        },
        options: CarouselOptions(
            viewportFraction: 0.69, height: 365, enlargeCenterPage: true),
      ),
    );
  }
}

class _ThirdRow extends StatelessWidget {
  final EdgeInsets mainPadding;

  const _ThirdRow({
    super.key,
    required this.coursesCategories,
    required this.textStyle,
    required this.mainPadding,
  });

  final List<String> coursesCategories;
  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: mainPadding.copyWith(left: 0, right: 0),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: 55,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: CourseAppTheme.appThirdColor,
                    ),
                    alignment: Alignment.center,
                    padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                    margin: EdgeInsets.fromLTRB(8, 10, 0, 8),
                    child: Text(
                      coursesCategories[index],
                      style: textStyle.labelLarge
                          ?.copyWith(color: Colors.black54, fontSize: 13),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SecondRow extends StatelessWidget {
  final EdgeInsets mainPadding;
  final TextTheme textStyle;

  const _SecondRow({
    super.key,
    required this.textStyle,
    required this.mainPadding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: mainPadding.copyWith(top: 10, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MyAppTextField(
            textStyle: textStyle,
            labelText: 'جستجوی درس',
            iconData: CupertinoIcons.search,
          ),
          SizedBox(
              width: 50,
              height: 50,
              child: IconButtonTheme(
                data: CourseAppTheme.iconButtonThemeData(),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: CourseAppTheme.appThirdColor,
                  ),
                  child: IconButton(
                    color: CourseAppTheme.appSecondaryColor,
                    onPressed: () {},
                    icon: Image.asset('assets/icons/icons8-filter-100.png'),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}

class _FirstRow extends StatelessWidget {
  final EdgeInsets mainPadding;
  final TextTheme textStyle;

  const _FirstRow({
    super.key,
    required this.textStyle,
    required this.mainPadding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: mainPadding.copyWith(top: 30, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomSlidingSegmentedControl(
            initialValue: 2,
            children: {
              1: Text(
                'ثبت نام',
                style: textStyle.labelLarge?.copyWith(
                    fontWeight: FontWeight.bold, color: Colors.white),
              ),
              2: Text(
                'ورود',
                style: textStyle.labelLarge?.copyWith(
                    fontWeight: FontWeight.w900, color: Colors.white),
              ),
            },
            onValueChanged: (value) {
              value == 1
                  ? showCupertinoDialog(
                      context: context,
                      builder: (context) => MyAppShowDialog(
                            textStyle: textStyle,
                            mainPadding: mainPadding,
                            dialogLabel: 'ایجاد حساب',
                            textFieldCount: 5,
                            labelTexts: [
                              'نام و نام خانوادگی',
                              'ایمیل',
                              'شماره موبایل',
                              'رمز عبور',
                              'تکرار رمز عبور'
                            ],
                            iconsData: [
                              CupertinoIcons.person,
                              CupertinoIcons.at,
                              CupertinoIcons.phone,
                              CupertinoIcons.lock,
                              CupertinoIcons.lock_fill,
                            ],
                          ))
                  : showCupertinoDialog(
                      context: context,
                      builder: (context) => MyAppShowDialog(
                        textStyle: textStyle,
                        mainPadding: mainPadding,
                        dialogLabel: 'ورود به نرم افزار',
                        textFieldCount: 2,
                        labelTexts: ['ایمیل', 'رمز عبور'],
                        iconsData: [CupertinoIcons.at, CupertinoIcons.lock],
                      ),
                    );
            },
            decoration: BoxDecoration(
              color: CourseAppTheme.appPrimaryColor,
              borderRadius: BorderRadius.circular(8),
            ),
            thumbDecoration: BoxDecoration(
              color: CourseAppTheme.appSecondaryColor,
              borderRadius: BorderRadius.circular(6),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.8),
                  blurRadius: 50.0,
                  spreadRadius: 1.3,
                  offset: Offset(
                    0.0,
                    0.0,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            width: 50,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset('assets/images/blank-profile-picture.png'),
            ),
          )
        ],
      ),
    );
  }
}
