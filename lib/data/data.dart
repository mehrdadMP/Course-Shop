class Course {
  final String courseName;
  final String coursePrice;
  final String teacherName;
  final String courseLength;
  final int courseSessionNumber;
  final String coursePhoto;

  Course({
    required this.courseName,
    required this.coursePrice,
    required this.teacherName,
    required this.courseLength,
    required this.courseSessionNumber,
    required this.coursePhoto,
  });
}

class Post {
  final int id;
  final String caption;
  final String title;
  final String likes;
  final String time;
  final bool isBookMarked;
  final String imageFileName;

  Post(
      {required this.id,
      required this.caption,
      required this.title,
      required this.likes,
      required this.time,
      required this.isBookMarked,
      required this.imageFileName});
}

class AppData {
  static List<Course> get allCourses {
    return [
      Course(
        courseName: 'آموزش رایگان پایتون',
        coursePrice: 'رایگان',
        teacherName: 'پژمان اقبالی',
        courseLength: '۱۴۰ دقیقه',
        courseSessionNumber: 1,
        coursePhoto: 'assets/images/courses/python.jpg',
      ),
      Course(
        courseName: 'آموزش وردپرس WordPress مقدماتی',
        coursePrice: '۳۳۹۰۰۰ تومان',
        teacherName: 'رضا هاشمیان',
        courseLength: '۱۱ ساعت و ۵۶ دقیقه',
        courseSessionNumber: 56,
        coursePhoto: 'assets/images/courses/wordPress.jpg',
      ),
      Course(
        courseName: 'آموزش ریاضی عمومی ۱',
        coursePrice: '۳۸۹۰۰۰ تومان',
        teacherName: 'فرشید شیرافکن',
        courseLength: '۳۰ ساعت و ۵۰ دقیقه',
        courseSessionNumber: 70,
        coursePhoto: 'assets/images/courses/math.jpg',
      ),
      Course(
        courseName: 'آموزش رایگان ابزار git',
        coursePrice: 'رایگان',
        teacherName: 'جادی میرمیرانی',
        courseLength: '۱ ساعت و ۳۹ دقیقه',
        courseSessionNumber: 1,
        coursePhoto: 'assets/images/courses/git.jpg',
      ),
      Course(
        courseName: 'آموزش رایگان illustrator',
        coursePrice: 'رایگان',
        teacherName: 'مهدی اشرفی',
        courseLength: '۲ ساعت و ۹ دقیقه',
        courseSessionNumber: 3,
        coursePhoto: 'assets/images/courses/illustrator.jpg',
      ),
      Course(
        courseName: 'آموزش Excel 2021',
        coursePrice: '۳۵۹۰۰۰',
        teacherName: 'آزاده سهرابی نژاد',
        courseLength: '۹ ساعت و ۱۱ دقیقه',
        courseSessionNumber: 43,
        coursePhoto: 'assets/images/courses/excel.jpg',
      ),
      Course(
        courseName: 'آموزش رایگان برنامه نویسی c++',
        coursePrice: 'رایگان',
        teacherName: 'فرشید شیرافکن',
        courseLength: '۲ ساعت و ۳۹ دقیقه',
        courseSessionNumber: 2,
        coursePhoto: 'assets/images/courses/c++.jpg',
      ),
      Course(
        courseName: 'آموزش رایگان Power BI',
        coursePrice: 'رایگان',
        teacherName: 'عباس فرمانی',
        courseLength: '۱ ساعت و ۱۸ دقیقه',
        courseSessionNumber: 1,
        coursePhoto: 'assets/images/courses/powerBI.jpg',
      ),
      Course(
        courseName: 'آموزش رایگان AutoCAD 2023',
        coursePrice: 'رایگان',
        teacherName: 'هاشم بهمن‌یار',
        courseLength: '۲ ساعت و ۳۹ دقیقه',
        courseSessionNumber: 3,
        coursePhoto: 'assets/images/courses/AutoCAD.jpg',
      ),
      Course(
        courseName: 'آموزش نصب ویندوز ۱۱',
        coursePrice: 'رایگان',
        teacherName: 'رضا هاشمیان',
        courseLength: '۱۳ دقیقه',
        courseSessionNumber: 1,
        coursePhoto: 'assets/images/courses/windows11.jpg',
      ),
      Course(
        courseName: 'آموزش Microsoft Project',
        coursePrice: '۴۴۹۰۰۰ تومان',
        teacherName: 'مصعود امینی',
        courseLength: '۵ ساعت و ۳۳ دقیقه',
        courseSessionNumber: 5,
        coursePhoto: 'assets/images/courses/',
      ),
      Course(
        courseName: 'آموزش رایگان نتوورک‌ پلاس',
        coursePrice: 'رایگان',
        teacherName: 'منوچهر بابایی',
        courseLength: '۱ ساعت و ۳۵ دقیقه',
        courseSessionNumber: 2,
        coursePhoto: 'assets/images/courses/network+.jpg',
      ),
      Course(
        courseName: 'آموزش Premier',
        coursePrice: '۴۴۹۰۰۰ تومان',
        teacherName: 'علی خسروی',
        courseLength: '۸ ساعت و ۴۹ دقیقه',
        courseSessionNumber: 6,
        coursePhoto: 'assets/images/courses/premiere.jpg',
      ),
      Course(
        courseName: 'آموزش مقدماتی Photoshop',
        coursePrice: '۲۹۵۰۰۰ تومان',
        teacherName: 'مهدی اشرفی',
        courseLength: '۷ ساعت و ۵۲ دقیقه',
        courseSessionNumber: 5,
        coursePhoto: 'assets/images/courses/',
      ),
      Course(
        courseName: 'آموزش رایگان CorelDraw',
        coursePrice: 'رایگان',
        teacherName: 'مهدی اشرفی',
        courseLength: '۲ ساعت و ۱ دقیقه',
        courseSessionNumber: 1,
        coursePhoto: 'assets/images/courses/corelDraw.jpg',
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
        courseSessionNumber: 1,
        coursePhoto: 'assets/images/courses/windows11.jpg',
      ),
      Course(
        courseName: 'آموزش رایگان ابزار git',
        coursePrice: 'رایگان',
        teacherName: 'جادی میرمیرانی',
        courseLength: '۱ ساعت و ۳۹ دقیقه',
        courseSessionNumber: 1,
        coursePhoto: 'assets/images/courses/git.jpg',
      ),
      Course(
        courseName: 'آموزش رایگان نتوورک‌ پلاس',
        coursePrice: 'رایگان',
        teacherName: 'منوچهر بابایی',
        courseLength: '۱ ساعت و ۳۵ دقیقه',
        courseSessionNumber: 2,
        coursePhoto: 'assets/images/courses/network+.jpg',
      ),
      Course(
        courseName: 'آموزش رایگان AutoCAD 2023',
        coursePrice: 'رایگان',
        teacherName: 'هاشم بهمن‌یار',
        courseLength: '۲ ساعت و ۳۹ دقیقه',
        courseSessionNumber: 3,
        coursePhoto: 'assets/images/courses/AutoCAD.jpg',
      ),
      Course(
        courseName: 'آموزش مقدماتی Photoshop',
        coursePrice: '۲۹۵۰۰۰ تومان',
        teacherName: 'مهدی اشرفی',
        courseLength: '۷ ساعت و ۵۲ دقیقه',
        courseSessionNumber: 5,
        coursePhoto: 'assets/images/courses/',
      ),
      Course(
        courseName: 'آموزش رایگان برنامه نویسی c++',
        coursePrice: 'رایگان',
        teacherName: 'فرشید شیرافکن',
        courseLength: '۲ ساعت و ۳۹ دقیقه',
        courseSessionNumber: 2,
        coursePhoto: 'assets/images/courses/c++.jpg',
      ),
      Course(
        courseName: 'آموزش رایگان پایتون',
        coursePrice: 'رایگان',
        teacherName: 'پژمان اقبالی',
        courseLength: '۱۴۰ دقیقه',
        courseSessionNumber: 1,
        coursePhoto: 'assets/images/courses/python.jpg',
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
        courseSessionNumber: 1,
        coursePhoto: 'assets/images/courses/git.jpg',
      ),
      Course(
        courseName: 'آموزش رایگان برنامه نویسی c++',
        coursePrice: 'رایگان',
        teacherName: 'فرشید شیرافکن',
        courseLength: '۲ ساعت و ۳۹ دقیقه',
        courseSessionNumber: 2,
        coursePhoto: 'assets/images/courses/c++.jpg',
      ),
      Course(
        courseName: 'آموزش نصب ویندوز ۱۱',
        coursePrice: 'رایگان',
        teacherName: 'رضا هاشمیان',
        courseLength: '۱۳ دقیقه',
        courseSessionNumber: 1,
        coursePhoto: 'assets/images/courses/windows11.jpg',
      ),
      Course(
        courseName: 'آموزش مقدماتی Photoshop',
        coursePrice: '۲۹۵۰۰۰ تومان',
        teacherName: 'مهدی اشرفی',
        courseLength: '۷ ساعت و ۵۲ دقیقه',
        courseSessionNumber: 5,
        coursePhoto: 'assets/images/courses/',
      ),
      Course(
        courseName: 'آموزش رایگان پایتون',
        coursePrice: 'رایگان',
        teacherName: 'پژمان اقبالی',
        courseLength: '۱۴۰ دقیقه',
        courseSessionNumber: 1,
        coursePhoto: 'assets/images/courses/python.jpg',
      ),
      Course(
        courseName: 'آموزش رایگان نتوورک‌ پلاس',
        coursePrice: 'رایگان',
        teacherName: 'منوچهر بابایی',
        courseLength: '۱ ساعت و ۳۵ دقیقه',
        courseSessionNumber: 2,
        coursePhoto: 'assets/images/courses/network+.jpg',
      ),
      Course(
        courseName: 'آموزش Microsoft Project',
        coursePrice: '۴۴۹۰۰۰ تومان',
        teacherName: 'مصعود امینی',
        courseLength: '۵ ساعت و ۳۳ دقیقه',
        courseSessionNumber: 5,
        coursePhoto: 'assets/images/courses/',
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
        courseSessionNumber: 6,
        coursePhoto: 'assets/images/courses/premiere.jpg',
      ),
      Course(
        courseName: 'آموزش Excel 2021',
        coursePrice: '۳۵۹۰۰۰',
        teacherName: 'آزاده سهرابی نژاد',
        courseLength: '۹ ساعت و ۱۱ دقیقه',
        courseSessionNumber: 43,
        coursePhoto: 'assets/images/courses/excel.jpg',
      ),
      Course(
        courseName: 'آموزش وردپرس WordPress مقدماتی',
        coursePrice: '۳۳۹۰۰۰ تومان',
        teacherName: 'رضا هاشمیان',
        courseLength: '۱۱ ساعت و ۵۶ دقیقه',
        courseSessionNumber: 56,
        coursePhoto: 'assets/images/courses/wordPress.jpg',
      ),
    ];
  }
}
