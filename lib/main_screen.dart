import 'package:carousel_slider/carousel_slider.dart';
import 'package:course_shop/data/data.dart';
import 'package:course_shop/my_app_texts.dart';
import 'package:course_shop/reusable_widgets/my_app_divider.dart';
import 'package:course_shop/reusable_widgets/my_app_bouncing_scroll_physics.dart';
import 'package:course_shop/reusable_widgets/my_app_show_dialog.dart';
import 'package:course_shop/reusable_widgets/my_app_textfield.dart';
import 'package:course_shop/reusable_widgets/my_app_vertical_listview.dart';
import 'package:course_shop/theme.dart';
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Course> allCourses = AppData.allCourses;
    final List<Course> popularCourses = AppData.popularCourses;
    final textStyle = Theme.of(context).textTheme;
    const mainPadding = EdgeInsets.fromLTRB(25, 0, 25, 0);
    final contextSize = MediaQuery.sizeOf(context);
    final List<String> coursesCategories = <String>[
      MyAppTexts.allCourses,
      MyAppTexts.design,
      MyAppTexts.programming,
      MyAppTexts.skillLearning,
      MyAppTexts.DMaxLearning,
    ];
    return SafeArea(
      child: Scaffold(
        body: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: SingleChildScrollView(
            physics: MyAppBouncingScrollPhysics(),
            child: Column(children: [
              _FirstRow(textStyle: textStyle, mainPadding: mainPadding),
              MyAppDivider(mainPadding: mainPadding),
              _SecondRow(textStyle: textStyle, mainPadding: mainPadding),
              _ThirdRow(
                  coursesCategories: coursesCategories,
                  textStyle: textStyle,
                  mainPadding: mainPadding),
              _FourthRow(
                  textStyle: textStyle,
                  mainPadding: mainPadding,
                  allCourses: allCourses),
              _FifthRow(textStyle: textStyle, mainPadding: mainPadding),
              _SixthRow(
                  textStyle: textStyle,
                  mainPadding: mainPadding,
                  contextSize: contextSize,
                  popularCourses: popularCourses),
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
  final List<Course> popularCourses;

  const _SixthRow({
    required this.textStyle,
    required this.mainPadding,
    required this.contextSize,
    required this.popularCourses,
  });
  @override
  Widget build(BuildContext context) {
    final getData = GetData(courses: popularCourses, textStyle: textStyle);

    return Padding(
      padding: mainPadding.copyWith(left: 25, right: 25),
      child: My_App_Vertical_ListView(
        itemCount: popularCourses.length,
        contextSize: contextSize,
        textStyle: textStyle,
        hight: contextSize.height - 550,
        itemsHight: 126,
        setDividerBetweenItems: true,
        setBorder: true,
        setLeftArrowButton: true,
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
            MyAppTexts.popularCourses,
            style: textStyle.titleMedium
                ?.copyWith(fontSize: 17, fontWeight: FontWeight.w800),
          ),
          Text(MyAppTexts.seeAll,
              style: textStyle.titleMedium?.copyWith(
                  color: CourseAppTheme.appsixthColor, fontSize: 13)),
        ],
      ),
    );
  }
}

class _FourthRow extends StatelessWidget {
  final EdgeInsets mainPadding;
  final List<Course> allCourses;

  const _FourthRow({
    super.key,
    required this.textStyle,
    required this.mainPadding,
    required this.allCourses,
  });

  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: mainPadding.copyWith(left: 0, right: 0),
      child: CarouselSlider.builder(
        itemCount: allCourses.length,
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
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          foregroundDecoration: BoxDecoration(
                              border: Border.all(width: 0.1),
                              borderRadius: BorderRadius.circular(13.5),
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                      allCourses[index].coursePhoto))),
                          height: 175,
                          decoration: BoxDecoration(
                            color: CourseAppTheme.appSecondaryColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Text>[
                            Text(
                              allCourses[index].courseName,
                              style: textStyle.bodySmall,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(children: [
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
                                  MyAppTexts.teacherName +
                                      allCourses[index].teacherName,
                                  style: textStyle.bodySmall,
                                ),
                              ),
                            ]),
                            Text(allCourses[index].coursePrice,
                                style: textStyle.bodySmall?.copyWith(
                                    color: CourseAppTheme.appFifthColor)),
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
                                allCourses[index].courseLength,
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
                                allCourses[index].courseSessionNumber,
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
                physics: MyAppBouncingScrollPhysics(),
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
            labelText: MyAppTexts.searchCourse,
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
                MyAppTexts.signUp,
                style: textStyle.labelLarge?.copyWith(
                    fontWeight: FontWeight.bold, color: Colors.white),
              ),
              2: Text(
                MyAppTexts.signIn,
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
                            dialogLabel: MyAppTexts.signUpLabel,
                            textFieldCount: 5,
                            labelTexts: [
                              MyAppTexts.signUpFirstLastName,
                              MyAppTexts.signUpEmail,
                              MyAppTexts.signUpPhoneNumber,
                              MyAppTexts.signUpPassword,
                              MyAppTexts.signUpRePassword
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
                        dialogLabel: MyAppTexts.signInLabel,
                        textFieldCount: 2,
                        labelTexts: [
                          MyAppTexts.signInEmail,
                          MyAppTexts.signInPassword
                        ],
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
