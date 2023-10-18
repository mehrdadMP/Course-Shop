import 'package:course_shop/reusable_widgets/my_app_bouncing_scroll_physics.dart';
import 'package:course_shop/reusable_widgets/my_app_divider.dart';
import 'package:course_shop/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class My_App_Vertical_ListView extends StatelessWidget {
  final Size contextSize;
  final TextTheme textStyle;
  final List<Widget> row1Children;
  final List<Widget> row2Children;
  final List<Widget> row3Children;
  final double? hight;
  final double? itemsHight;
  final bool setDividerBetweenItems;
  final bool setBorder;
  final bool setLeftArrowButton;

  ///This widget creates a list containing a number of items.
  ///Each item contains a photo and 3 rows [row1Children],[row2Children],[row3Children] in front of the photo,
  ///where several widgets can be defined within each row.

  const My_App_Vertical_ListView({
    super.key,
    required this.contextSize,
    required this.textStyle,
    required this.row1Children,
    required this.row2Children,
    required this.row3Children,
    required this.hight,
    required this.itemsHight,
    required this.setDividerBetweenItems,
    required this.setBorder,
    required this.setLeftArrowButton,
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
                itemCount: 40,
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
                                margin: EdgeInsets.fromLTRB(0, 7, 7, 7),
                                width: contextSize.width - 340,
                                decoration: BoxDecoration(
                                    color: CourseAppTheme.appSecondaryColor,
                                    borderRadius: BorderRadius.circular(11)),
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
                                          children: row1Children,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(7.0),
                                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: row2Children,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(7.0),
                                        child: Row(
                                          children: row3Children,
                                        ),
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
