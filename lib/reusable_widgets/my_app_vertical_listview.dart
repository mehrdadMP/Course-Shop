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

  const My_App_Vertical_ListView({
    super.key,
    required this.contextSize,
    required this.textStyle, 
    required this.row1Children, 
    required this.row2Children, 
    required this.row3Children, 
    required this.hight, 
    required this.itemsHight,
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
                physics: BouncingScrollPhysics(
                    decelerationRate: ScrollDecelerationRate.fast),
                itemCount: 40,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Container(
                    height: itemsHight,
                    decoration: BoxDecoration(
                      border: Border.all(color: CourseAppTheme.appBorderColor),
                      borderRadius: BorderRadius.circular(13),
                    ),
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(6),
                    margin: EdgeInsets.fromLTRB(0, 8, 0, 8),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 7, 7, 7),
            width: contextSize.width - 340,
            decoration: BoxDecoration(
              color: CourseAppTheme.appSecondaryColor,
              borderRadius: BorderRadius.circular(11),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 5, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: Row(
                      children: row1Children,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: Row(
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
          Icon(
            CupertinoIcons.arrow_turn_down_left,
            size: 23,
          )
        ]),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
