import 'package:course_shop/theme.dart';
import 'package:flutter/material.dart';

class Course {
  final String courseName;
  final String coursePrice;
  final String teacherName;
  final String courseLength;
  final String courseSessionNumber;
  final String coursePhoto;
  final double rateOfProgressInCourse;

  Course({
    required this.courseName,
    required this.coursePrice,
    required this.teacherName,
    required this.courseLength,
    required this.courseSessionNumber,
    required this.coursePhoto,
    required this.rateOfProgressInCourse,
  });
}

class AppData {
  static List<Course> get allCourses {
    return [
      Course(
        courseName: 'آموزش رایگان پایتون',
        coursePrice: 'رایگان',
        teacherName: 'پژمان اقبالی',
        courseLength: '۲ ساعت و ۲۰ دقیقه',
        courseSessionNumber: '۱ جلسه',
        coursePhoto: 'assets/images/courses/python.jpg',
        rateOfProgressInCourse: 0.1,
      ),
      Course(
        courseName: 'آموزش وردپرس WordPress مقدماتی',
        coursePrice: '۳۳۹۰۰۰ تومان',
        teacherName: 'رضا هاشمیان',
        courseLength: '۱۱ ساعت و ۵۶ دقیقه',
        courseSessionNumber: '۵۶ جلسه',
        coursePhoto: 'assets/images/courses/wordPress.jpg',
        rateOfProgressInCourse: 0.5,
      ),
      Course(
        courseName: 'آموزش ریاضی عمومی ۱',
        coursePrice: '۳۸۹۰۰۰ تومان',
        teacherName: 'فرشید شیرافکن',
        courseLength: '۳۰ ساعت و ۵۰ دقیقه',
        courseSessionNumber: '۷۰ جلسه',
        coursePhoto: 'assets/images/courses/math.jpg',
        rateOfProgressInCourse: 0.7,
      ),
      Course(
        courseName: 'آموزش رایگان ابزار git',
        coursePrice: 'رایگان',
        teacherName: 'جادی میرمیرانی',
        courseLength: '۱ ساعت و ۳۹ دقیقه',
        courseSessionNumber: '۱ جلسه',
        coursePhoto: 'assets/images/courses/git.jpg',
        rateOfProgressInCourse: 0.35,
      ),
      Course(
        courseName: 'آموزش رایگان illustrator',
        coursePrice: 'رایگان',
        teacherName: 'مهدی اشرفی',
        courseLength: '۲ ساعت و ۹ دقیقه',
        courseSessionNumber: '۳ جلسه',
        coursePhoto: 'assets/images/courses/illustrator.jpg',
        rateOfProgressInCourse: 0.54,
      ),
      Course(
        courseName: 'آموزش Excel 2021',
        coursePrice: '۳۵۹۰۰۰',
        teacherName: 'آزاده سهرابی نژاد',
        courseLength: '۹ ساعت و ۱۱ دقیقه',
        courseSessionNumber: '۴۳ جلسه',
        coursePhoto: 'assets/images/courses/excel.jpg',
        rateOfProgressInCourse: 0.73,
      ),
      Course(
        courseName: 'آموزش رایگان برنامه نویسی c++',
        coursePrice: 'رایگان',
        teacherName: 'فرشید شیرافکن',
        courseLength: '۲ ساعت و ۳۹ دقیقه',
        courseSessionNumber: '۲ جلسه',
        coursePhoto: 'assets/images/courses/c++.jpg',
        rateOfProgressInCourse: 0.89,
      ),
      Course(
        courseName: 'آموزش رایگان Power BI',
        coursePrice: 'رایگان',
        teacherName: 'عباس فرمانی',
        courseLength: '۱ ساعت و ۱۸ دقیقه',
        courseSessionNumber: '۱ جلسه',
        coursePhoto: 'assets/images/courses/powerBI.jpg',
        rateOfProgressInCourse: 0.65,
      ),
      Course(
        courseName: 'آموزش رایگان AutoCAD 2023',
        coursePrice: 'رایگان',
        teacherName: 'هاشم بهمن‌یار',
        courseLength: '۲ ساعت و ۳۹ دقیقه',
        courseSessionNumber: '۳ جلسه',
        coursePhoto: 'assets/images/courses/AutoCAD.jpg',
        rateOfProgressInCourse: 0.91,
      ),
      Course(
        courseName: 'آموزش نصب ویندوز ۱۱',
        coursePrice: 'رایگان',
        teacherName: 'رضا هاشمیان',
        courseLength: '۱۳ دقیقه',
        courseSessionNumber: '۱ جلسه',
        coursePhoto: 'assets/images/courses/windows11.jpg',
        rateOfProgressInCourse: 0.09,
      ),
      Course(
        courseName: 'آموزش Microsoft Project',
        coursePrice: '۴۴۹۰۰۰ تومان',
        teacherName: 'مصعود امینی',
        courseLength: '۵ ساعت و ۳۳ دقیقه',
        courseSessionNumber: '۵ جلسه',
        coursePhoto: 'assets/images/courses/microsoftProject.jpg',
        rateOfProgressInCourse: 0.8,
      ),
      Course(
        courseName: 'آموزش رایگان نتوورک‌ پلاس',
        coursePrice: 'رایگان',
        teacherName: 'منوچهر بابایی',
        courseLength: '۱ ساعت و ۳۵ دقیقه',
        courseSessionNumber: '۲ جلسه',
        coursePhoto: 'assets/images/courses/network+.jpg',
        rateOfProgressInCourse: 0.57,
      ),
      Course(
        courseName: 'آموزش Premier',
        coursePrice: '۴۴۹۰۰۰ تومان',
        teacherName: 'علی خسروی',
        courseLength: '۸ ساعت و ۴۹ دقیقه',
        courseSessionNumber: '۶ جلسه',
        coursePhoto: 'assets/images/courses/premiere.jpg',
        rateOfProgressInCourse: 0.2,
      ),
      Course(
        courseName: 'آموزش مقدماتی Photoshop',
        coursePrice: '۲۹۵۰۰۰ تومان',
        teacherName: 'مهدی اشرفی',
        courseLength: '۷ ساعت و ۵۲ دقیقه',
        courseSessionNumber: '۵ جلسه',
        coursePhoto: 'assets/images/courses/photoshop.jpg',
        rateOfProgressInCourse: 0.6,
      ),
      Course(
        courseName: 'آموزش رایگان CorelDraw',
        coursePrice: 'رایگان',
        teacherName: 'مهدی اشرفی',
        courseLength: '۲ ساعت و ۱ دقیقه',
        courseSessionNumber: '۱ جلسه',
        coursePhoto: 'assets/images/courses/corelDraw.jpg',
        rateOfProgressInCourse: 0.45,
      ),
    ];
  }

  static List<Course> get popularCourses {
    return [
      Course(
        courseName: 'آموزش نصب ویندوز ۱۱',
        coursePrice: 'رایگان',
        teacherName: 'رضا هاشمیان',
        courseLength: '۱۳ دقیقه',
        courseSessionNumber: '۱ جلسه',
        coursePhoto: 'assets/images/courses/windows11.jpg',
        rateOfProgressInCourse: 0.09,
      ),
      Course(
        courseName: 'آموزش رایگان ابزار git',
        coursePrice: 'رایگان',
        teacherName: 'جادی میرمیرانی',
        courseLength: '۱ ساعت و ۳۹ دقیقه',
        courseSessionNumber: '۱ جلسه',
        coursePhoto: 'assets/images/courses/git.jpg',
        rateOfProgressInCourse: 0.35,
      ),
      Course(
        courseName: 'آموزش رایگان نتوورک‌ پلاس',
        coursePrice: 'رایگان',
        teacherName: 'منوچهر بابایی',
        courseLength: '۱ ساعت و ۳۵ دقیقه',
        courseSessionNumber: '۲ جلسه',
        coursePhoto: 'assets/images/courses/network+.jpg',
        rateOfProgressInCourse: 0.57,
      ),
      Course(
        courseName: 'آموزش رایگان AutoCAD 2023',
        coursePrice: 'رایگان',
        teacherName: 'هاشم بهمن‌یار',
        courseLength: '۲ ساعت و ۳۹ دقیقه',
        courseSessionNumber: '۳ جلسه',
        coursePhoto: 'assets/images/courses/AutoCAD.jpg',
        rateOfProgressInCourse: 0.91,
      ),
      Course(
        courseName: 'آموزش مقدماتی Photoshop',
        coursePrice: '۲۹۵۰۰۰ تومان',
        teacherName: 'مهدی اشرفی',
        courseLength: '۷ ساعت و ۵۲ دقیقه',
        courseSessionNumber: '۵ جلسه',
        coursePhoto: 'assets/images/courses/photoshop.jpg',
        rateOfProgressInCourse: 0.6,
      ),
      Course(
        courseName: 'آموزش رایگان برنامه نویسی c++',
        coursePrice: 'رایگان',
        teacherName: 'فرشید شیرافکن',
        courseLength: '۲ ساعت و ۳۹ دقیقه',
        courseSessionNumber: '۲ جلسه',
        coursePhoto: 'assets/images/courses/c++.jpg',
        rateOfProgressInCourse: 0.89,
      ),
      Course(
        courseName: 'آموزش رایگان پایتون',
        coursePrice: 'رایگان',
        teacherName: 'پژمان اقبالی',
        courseLength: '۲ ساعت و ۲۰ دقیقه',
        courseSessionNumber: '۱ جلسه',
        coursePhoto: 'assets/images/courses/python.jpg',
        rateOfProgressInCourse: 0.1,
      ),
    ];
  }

  static List<Course> get myCourses {
    return [
      Course(
        courseName: 'آموزش رایگان ابزار git',
        coursePrice: 'رایگان',
        teacherName: 'جادی میرمیرانی',
        courseLength: '۱ ساعت و ۳۹ دقیقه',
        courseSessionNumber: '۱ جلسه',
        coursePhoto: 'assets/images/courses/git.jpg',
        rateOfProgressInCourse: 0.35,
      ),
      Course(
        courseName: 'آموزش رایگان برنامه نویسی c++',
        coursePrice: 'رایگان',
        teacherName: 'فرشید شیرافکن',
        courseLength: '۲ ساعت و ۳۹ دقیقه',
        courseSessionNumber: '۲ جلسه',
        coursePhoto: 'assets/images/courses/c++.jpg',
        rateOfProgressInCourse: 0.89,
      ),
      Course(
        courseName: 'آموزش نصب ویندوز ۱۱',
        coursePrice: 'رایگان',
        teacherName: 'رضا هاشمیان',
        courseLength: '۱۳ دقیقه',
        courseSessionNumber: '۱ جلسه',
        coursePhoto: 'assets/images/courses/windows11.jpg',
        rateOfProgressInCourse: 0.09,
      ),
      Course(
        courseName: 'آموزش مقدماتی Photoshop',
        coursePrice: '۲۹۵۰۰۰ تومان',
        teacherName: 'مهدی اشرفی',
        courseLength: '۷ ساعت و ۵۲ دقیقه',
        courseSessionNumber: ' ۵ جلسه',
        coursePhoto: 'assets/images/courses/photoshop.jpg',
        rateOfProgressInCourse: 0.6,
      ),
      Course(
        courseName: 'آموزش رایگان پایتون',
        coursePrice: 'رایگان',
        teacherName: 'پژمان اقبالی',
        courseLength: '۲ ساعت و ۲۰ دقیقه',
        courseSessionNumber: '۱ جلسه',
        coursePhoto: 'assets/images/courses/python.jpg',
        rateOfProgressInCourse: 0.1,
      ),
      Course(
        courseName: 'آموزش رایگان نتوورک‌ پلاس',
        coursePrice: 'رایگان',
        teacherName: 'منوچهر بابایی',
        courseLength: '۱ ساعت و ۳۵ دقیقه',
        courseSessionNumber: '۲ جلسه',
        coursePhoto: 'assets/images/courses/network+.jpg',
        rateOfProgressInCourse: 0.57,
      ),
      Course(
        courseName: 'آموزش Microsoft Project',
        coursePrice: '۴۴۹۰۰۰ تومان',
        teacherName: 'مصعود امینی',
        courseLength: '۵ ساعت و ۳۳ دقیقه',
        courseSessionNumber: '۵ جلسه',
        coursePhoto: 'assets/images/courses/microsoftProject.jpg',
        rateOfProgressInCourse: 0.8,
      ),
    ];
  }

  static List<Course> get cartList {
    return [
      Course(
        courseName: 'آموزش Premier',
        coursePrice: '۴۴۹۰۰۰ تومان',
        teacherName: 'علی خسروی',
        courseLength: '۸ ساعت و ۴۹ دقیقه',
        courseSessionNumber: '۶ جلسه',
        coursePhoto: 'assets/images/courses/premiere.jpg',
        rateOfProgressInCourse: 0.2,
      ),
      Course(
        courseName: 'آموزش Excel 2021',
        coursePrice: '۳۵۹۰۰۰ تومان',
        teacherName: 'آزاده سهرابی نژاد',
        courseLength: '۹ ساعت و ۱۱ دقیقه',
        courseSessionNumber: '۴۳ جلسه',
        coursePhoto: 'assets/images/courses/excel.jpg',
        rateOfProgressInCourse: 0.73,
      ),
      Course(
        courseName: 'آموزش وردپرس WordPress مقدماتی',
        coursePrice: '۳۳۹۰۰۰ تومان',
        teacherName: 'رضا هاشمیان',
        courseLength: '۱۱ ساعت و ۵۶ دقیقه',
        courseSessionNumber: '۵۶ جلسه',
        coursePhoto: 'assets/images/courses/wordPress.jpg',
        rateOfProgressInCourse: 0.5,
      ),
    ];
  }
}

class GetData {
  final TextTheme textStyle;
  final List<Course> courses;
  GetData({
    required this.courses,
    required this.textStyle,
  });

  List<Text> get coursesNames {
    return List<Text>.generate(
        courses.length,
        (index) => Text(
              courses[index].courseName,
              style: textStyle.bodySmall?.copyWith(fontSize: 11.5),
            ));
  }

  List<Text> get coursesTeacherNames {
    return List<Text>.generate(
        courses.length,
        (index) => Text(
              courses[index].teacherName,
              style: textStyle.bodySmall?.copyWith(fontSize: 11.5),
            ));
  }

  List<Text> get coursesPrice {
    return List<Text>.generate(
        courses.length,
        (index) => Text(
              courses[index].coursePrice,
              style: textStyle.bodySmall?.copyWith(
                  color: CourseAppTheme.appFifthColor,
                  fontSize: 13.5,
                  fontWeight: FontWeight.w700),
            ));
  }

  List<String> get coursesPhoto {
    return List<String>.generate(
        courses.length, (index) => courses[index].coursePhoto);
  }

  List<Text> get coursesLength {
    return List<Text>.generate(
        courses.length,
        (index) => Text(
              courses[index].courseLength,
              style: textStyle.bodySmall?.copyWith(fontSize: 11.5),
            ));
  }

  List<Text> get coursesSessionNumber {
    return List<Text>.generate(
        courses.length,
        (index) => Text(
              courses[index].courseSessionNumber,
              style: textStyle.bodySmall?.copyWith(fontSize: 11.5),
            ));
  }

  List<double> get coursesProgress {
    return List<double>.generate(
      courses.length,
      (index) => courses[index].rateOfProgressInCourse,
    );
  }
}
