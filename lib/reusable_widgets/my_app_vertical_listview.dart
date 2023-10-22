import 'package:course_shop/reusable_widgets/my_app_bouncing_scroll_physics.dart';
import 'package:course_shop/reusable_widgets/my_app_divider.dart';
import 'package:course_shop/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class My_App_Vertical_ListView extends StatelessWidget {
  final Size contextSize;
  final TextTheme textStyle;
  final List<String> itemImage;
  final List<Widget> row1Children;
  final List<Widget> row2Children1;
  final List<Widget>? row2Children2;
  final List<Widget>? row2Children3;
  final List<Widget>? row3Children1;
  final Widget? row3Children2;
  final List<Widget>? row3Children3;
  final List<double>? row3Children4;
  final double? hight;
  final double? itemsHight;
  final bool setDividerBetweenItems;
  final bool setBorder;
  final bool setLeftArrowButton;
  final int itemCount;

  ///This widget creates a list containing a number of items.
  ///Each item contains a photo and 3 rows [row1Children],[row2Children],[row3Children] in front of the photo,
  ///where several widgets can be defined within each row.

  const My_App_Vertical_ListView({
    super.key,
    required this.contextSize,
    required this.textStyle,
    required this.itemImage,
    required this.row1Children,
    required this.row2Children1,
    this.row2Children2,
    this.row2Children3,
    this.row3Children1,
    this.row3Children2,
    this.row3Children3,
    this.row3Children4,
    required this.hight,
    required this.itemsHight,
    required this.setDividerBetweenItems,
    required this.setBorder,
    required this.setLeftArrowButton,
    required this.itemCount,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: SizedBox(
            height: hight,
            child: ScrollConfiguration(
              behavior:
                  ScrollConfiguration.of(context).copyWith(scrollbars: false),
              child: ListView.builder(
                shrinkWrap: true,
                physics: MyAppBouncingScrollPhysics(),
                itemCount: itemCount,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        height: itemsHight,
                        decoration: BoxDecoration(
                          border: setBorder == true
                              ? Border.all(color: CourseAppTheme.appBorderColor)
                              : null,
                          borderRadius: BorderRadius.circular(13),
                        ),
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(6),
                        margin: EdgeInsets.fromLTRB(0, 8, 0, 8),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0,
                                    85 - contextSize.height / 13,
                                    7,
                                    85 - contextSize.height / 13),
                                width: contextSize.width - 340,
                                decoration: BoxDecoration(
                                    color: CourseAppTheme.appSecondaryColor,
                                    borderRadius: BorderRadius.circular(11)),
                                foregroundDecoration: BoxDecoration(
                                  border: Border.all(width: 0.1),
                                  borderRadius: BorderRadius.circular(11),
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(itemImage[index]),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 10, 5, 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(7.0),
                                        child: Row(
                                          children: [row1Children[index]],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(7.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      5, 0, 0, 0),
                                                  child: row2Children1[0],
                                                ),
                                                row2Children2 != null
                                                    ? row2Children2![index]
                                                    : SizedBox(),
                                              ],
                                            ),
                                            row2Children3 != null
                                                ? row2Children3![index]
                                                : SizedBox(),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(7.0),
                                        child: Row(children: [
                                          row3Children1 != null
                                              ? row3Children1![index]
                                              : SizedBox(),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          row3Children2 != null
                                              ? row3Children2!
                                              : SizedBox(),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          row3Children3 != null
                                              ? row3Children3![0]
                                              : SizedBox(),
                                          row3Children4 != null
                                              ? LinearPercentIndicator(animation: true,
                                                  lineHeight: 15,
                                                  width: 200,
                                                  backgroundColor:
                                                      CourseAppTheme
                                                          .appSecondaryColor,
                                                  progressColor: CourseAppTheme
                                                      .appFifthColor,
                                                  percent:
                                                      row3Children4![index],
                                                  barRadius: Radius.circular(5),
                                                  isRTL: true,
                                                )
                                              : SizedBox()
                                        ]),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              setLeftArrowButton == true
                                  ? Icon(
                                      CupertinoIcons.arrow_turn_down_left,
                                      size: 23,
                                    )
                                  : SizedBox()
                            ]),
                      ),
                      _setDivider(),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _setDivider() {
    return setDividerBetweenItems == true
        ? MyAppDivider(mainPadding: EdgeInsets.only(left: 5, right: 5))
        : SizedBox();
  }
}
